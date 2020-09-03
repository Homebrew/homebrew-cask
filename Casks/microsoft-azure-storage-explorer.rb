cask "microsoft-azure-storage-explorer" do
  version "1.15.1"
  sha256 "69afb5a27f0349e83008cafa92b5a809a626b79fc7562814a3d2147e4ec0138b"

  # github.com/microsoft/AzureStorageExplorer/ was verified as official when first introduced to the cask
  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/MaC_StorageExplorer.zip"
  appcast "https://github.com/microsoft/AzureStorageExplorer/releases.atom"
  name "Microsoft Azure Storage Explorer"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
