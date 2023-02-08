cask "microsoft-azure-storage-explorer" do
  version "1.27.2"
  sha256 "8365727f4a7e9dfb2116d8275bb61c43e2d07df581812b6c7d21790419790d55"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
