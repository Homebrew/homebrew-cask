cask "azure-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "2.89.0"
  sha256 arm:   "ac5e8ce16b2355a55a3bea20afee9d3d2dbc1289a18e8aa3625d0b62910124ba",
         intel: "9b94be70fe95b547b1208c07f3018e8880a5676aaff3335005ab445ab5044792"

  url "https://github.com/Azure/azure-cli/releases/download/azure-cli-#{version}/azure-cli-#{version}-macos-#{arch}.tar.gz",
      verified: "github.com/Azure/azure-cli/"
  name "Azure CLI"
  desc "Microsoft Azure CLI 2.0"
  homepage "https://docs.microsoft.com/cli/azure/overview"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos
  depends_on formula: "python@3.14"

  binary "bin/az"
  bash_completion "completions/bash/az"
  fish_completion "completions/fish/az.fish"
  zsh_completion "completions/zsh/_az"

  zap trash: "~/.azure"
end
