cask "microsoft-azure-storage-explorer" do
  arch arm: "arm64", intel: "x64"

  version "1.40.2"
  sha256 arm:   "bb455a692e7498da57b563746d7b5b016db9581e4eb2f93719a6c2f59bb0f12f",
         intel: "8063b2dea5b73878ed119b6be600dbf8e84d86223cf037aa9eafd6fc8752a891"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/StorageExplorer-darwin-#{arch}.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Microsoft Azure Storage Explorer.app"

  zap trash: [
    "~/Library/Application Support/StorageExplorer",
    "~/Library/Logs/StorageExplorer",
    "~/Library/Preferences/com.microsoft.StorageExplorer.plist",
  ]
end
