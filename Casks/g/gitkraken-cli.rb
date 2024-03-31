cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.6.1"
  sha256 arm:   "004023ed133532f5daab8e2f5d5126f00c00b1135fa54c7dcc932faf96a476c7",
         intel: "9f23cbc098b32bdb4b916965a3a713913b4f3dfaf0a0286d6c46b67b8ad0cd73"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  postflight do
    FileUtils.mkdir_p "#{HOMEBREW_PREFIX}/etc/bash_completion.d"
    FileUtils.ln_sf "#{staged_path}/gk.bash", "#{HOMEBREW_PREFIX}/etc/bash_completion.d/gk"
    FileUtils.mkdir_p "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d"
    FileUtils.ln_sf "#{staged_path}/gk.fish", "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/gk.fish"
    FileUtils.mkdir_p "#{HOMEBREW_PREFIX}/share/zsh/site-functions"
    FileUtils.ln_sf "#{staged_path}/_gk", "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_gk"
  end

  uninstall_postflight do
    FileUtils.rm_f "#{HOMEBREW_PREFIX}/etc/bash_completion.d/gk"
    FileUtils.rm_f "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/gk.fish"
    FileUtils.rm_f "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_gk"
  end

  zap trash: "~/.gitkraken"

  caveats <<~EOS
    Shell completions have been installed. If you are using bash or zsh, they should be automatically loaded. For fish, the completions should also autoload.

    If you experience issues with autoloading completions, please ensure your shell is configured to load completions from the Homebrew completions directories.

    Bash users: If you haven't installed bash-completion, you'll need to do so for completions to work. Install it via Homebrew with:
     brew install bash-completion
     or
     brew install bash-completion@2

    After installation, add the following line to your .bash_profile or .bashrc:
    [[ -r "#{HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]] && . "#{HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"

    Zsh users should ensure that the following line is present in their .zshrc:
      autoload -Uz compinit && compinit
      - Add the following line to your shell configuration file (.zshrc):
        fpath=("/opt/homebrew/share/zsh/site-functions" $fpath)

    Remember to restart your terminal or source your shell configuration file for changes to take effect.

    Fish users should not need to take any additional action as long as the fish shell is properly configured to load from the vendor completions directory.
  EOS
end
