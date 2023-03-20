cask "microsoft-azure-storage-explorer" do
  arch arm: "arm64", intel: "x64"

  version "1.28.1"
  sha256 arm:   "d9a20d28a38cfd605d2a84a833bccaf9edb4cde950406769cf739e57dbf99a80",
         intel: "6c4528319b8aac3954a5355ff60ecae19045852680daa2dc003f7fabebfa42ad"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/StorageExplorer-darwin-#{arch}.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
