cask "microsoft-azure-storage-explorer" do
  version "1.28.0"
  sha256 "76094a5722243b8c594dbc23c1cbbfdc20fb27deec151f4deb18d4c7a10df8a7"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
