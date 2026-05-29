cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.11"
  sha256 arm:          "333c25ad7fd5faa7e134054dc71a65ed08b05db4bf5d5b58feaadc6269975d92",
         intel:        "adf9d6650e268284df2c9635cc7bbc7646b81d5e49c5350214f920b49a67ba20",
         arm64_linux:  "f6bcafb5292d02db129712ab5c0356f1217c870f7131860301b82a66a1bc04c4",
         x86_64_linux: "2b254333ccf849dd1a4fd27e990a941d28e0c7e99a4a5baa904160f5e4ba6c76"

  url "https://x.ai/cli/grok-#{version}-#{os}-#{arch}"
  name "Grok Build"
  desc "Extensible coding agent for the terminal"
  homepage "https://x.ai/cli"

  livecheck do
    url "https://x.ai/cli/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "grok-#{version}-#{os}-#{arch}", target: "grok"
  binary "grok-#{version}-#{os}-#{arch}", target: "agent"

  generate_completions_from_executable "grok-#{version}-#{os}-#{arch}", "completions", base_name: "grok"

  zap rmdir: "~/.grok"
end
