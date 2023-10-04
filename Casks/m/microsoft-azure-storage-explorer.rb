cask "microsoft-azure-storage-explorer" do
  arch arm: "arm64", intel: "x64"

  version "1.31.2"
  sha256 arm:   "18d18d63ad5fa1f01a42038356d9537dfc890d016e887244a50e8ef1f93d99b4",
         intel: "ff55ff3b30ea95a42fd2231d92133c3cb50f548430d3b423e88b63b5fb313104"

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
