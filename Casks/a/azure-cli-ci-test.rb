cask "azure-cli-ci-test" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "2.91.0"
  sha256 arm:          "dc28a3eef40d0b20f266f1e76b7a91f7a8ecdeaa28d0c855459eaa74edacbae6",
         intel:        "b8c51c518c526d9ee0fd47716236f91804b578f9d560a2d8f60266fac7b67d6f",
         arm64_linux:  "1d0a008190aa39d26c6cb6a4ab818e7f7b0fd96258f96b49952d91411a64b01b",
         x86_64_linux: "26bbdd9bf46cdbe03dcbdbbe37b2301608e29518ae32fbdfcf1eb143d41d9f38"

  url "https://github.com/Azure/azure-cli/releases/download/azure-cli-#{version}/azure-cli-#{version}-#{os}-#{arch}.tar.gz"
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
  zsh_completion "completions/zsh/_az"
  fish_completion "completions/fish/az.fish"

  zap trash: "~/.azure"
end
