cask "azure-cli-ci-test" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "2.89.0"
  sha256 arm:          "2bdff89b779be06f606e61d7424cfe05596a7dc7ab071bcf874dcdb4c9fc3afd",
         intel:        "24c162c06f8258202caeb4620e208b8e9d970895a77f1ecf8dc0425bc51080b0",
         arm64_linux:  "7476cdcb31da93c52c90b951fb493df24a8814474590e55f996335909e7963df",
         x86_64_linux: "bbf7a627370995993c9b25ba2e45584061fc6c5a07531ebae6be7451af4fe6aa"

  url "https://github.com/Azure/homebrew-azure-cli/releases/download/azure-cli-#{version}/azure-cli-#{version}-#{os}-#{arch}.tar.gz"
  name "Azure CLI CI Test"
  desc "Microsoft Azure CLI 2.0 standalone archive validation"
  homepage "https://docs.microsoft.com/cli/azure/overview"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "python@3.14"

  binary "bin/az"
  bash_completion "completions/bash/az"
  fish_completion "completions/fish/az.fish"
  zsh_completion "completions/zsh/_az"

  zap trash: "~/.azure"
end
