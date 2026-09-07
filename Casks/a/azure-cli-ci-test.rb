cask "azure-cli-ci-test" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "2.90.0"
  sha256 arm:          "1cdcf8dc99ece8c10d198d9451d7ac0905a4d63aea5fac5fcf903bdf2aba93b3",
         intel:        "4617d8d16350dbee34f8024059ac768e0cfbdb7ec8f637abdfdaab1e5c9ba0ce",
         arm64_linux:  "df71d304216c1adb1bf6957f0386ea320d32beaf7019f927e0b7e4cf2d2a4df5",
         x86_64_linux: "9b2a19ad37bbe578e506a2643e974c99d3ee141b2f94cdb6f064a342e5c4eae1"

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
  fish_completion "completions/fish/az.fish"
  zsh_completion "completions/zsh/_az"

  zap trash: "~/.azure"
end
