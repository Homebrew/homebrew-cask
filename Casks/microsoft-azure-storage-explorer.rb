cask "microsoft-azure-storage-explorer" do
  version "1.25.0"
  sha256 "be037c1750dc4f0f9ca7b04e1f404930487045f202ba929d01a2f6e663bd1988"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
