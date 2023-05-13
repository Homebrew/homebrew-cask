cask "microsoft-azure-storage-explorer" do
  arch arm: "arm64", intel: "x64"

  version "1.29.1"
  sha256 arm:   "384fd560359e01e1ff10592ab53449b18da10ff668bfec3eb849db2b49182a91",
         intel: "d72f9994bc6803bc646c2a17712939c45e928d33334bfd09f031f7bdf35426fc"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/StorageExplorer-darwin-#{arch}.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"

  zap trash: [
    "~/Library/Application Support/StorageExplorer",
    "~/Library/Logs/StorageExplorer",
    "~/Library/Preferences/com.microsoft.StorageExplorer.plist",
  ]
end
