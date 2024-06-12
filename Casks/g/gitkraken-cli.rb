cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "2.0.1"
  sha256 arm:   "0976d7404a370b2f21848012a55094bc0aca6860eed57f3b0d5059c527c51451",
         intel: "ecab735e3358bf76c9064d601d08cf00fee7875fbde8437aba1b15b892548c04"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"
  binary "gk.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/gk"
  binary "_gk",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_gk"
  binary "gk.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/gk.fish"

  zap trash: "~/.gitkraken"
end
