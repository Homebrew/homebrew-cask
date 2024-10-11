cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.30.0"
  sha256 arm:   "3b31dbc413ad3e205bb68f055a2a76c1a3f0ea252270db6a908083b852b76be3",
         intel: "da3c1fd900a82a2d62aa197e5a984662ab2b237a0b6ee74c963fa28712bf6563"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip",
      verified: "cache.agilebits.com/dist/1P/op2/pkg/"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/CLI2"
    regex(%r{href=.*?/op_apple_universal[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  conflicts_with cask: [
    "1password-cli@1",
    "1password-cli@beta",
  ]

  zsh_completion = "#{staged_path}/_op"
  bash_completion = "#{staged_path}/op.bash"
  fish_completion = "#{staged_path}/op.fish"

  binary "op"
  binary zsh_completion, target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_op"
  binary bash_completion, target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/op"
  binary fish_completion, target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/op.fish"

  preflight do
    stdout, * = system_command "#{staged_path}/op", args: ["completion", "zsh"]
    File.write zsh_completion, stdout
    stdout, * = system_command "#{staged_path}/op", args: ["completion", "bash"]
    File.write bash_completion, stdout
    stdout, * = system_command "#{staged_path}/op", args: ["completion", "fish"]
    File.write fish_completion, stdout
  end

  zap trash: "~/.op"
end
