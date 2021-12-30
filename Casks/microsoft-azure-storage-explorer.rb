cask "microsoft-azure-storage-explorer" do
  version "1.22.0"
  sha256 "664d3ec658ee2b16d594aa4fc09d1678874302b0e5abc516e401285a3dc54561"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
