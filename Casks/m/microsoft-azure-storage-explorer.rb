cask "microsoft-azure-storage-explorer" do
  arch arm: "arm64", intel: "x64"

  version "1.41.0"
  sha256 arm:   "a3772941c376024029ce99795ec4c0a90894cc9b2d31142080af1c820ebe24a5",
         intel: "2e37c45302afbe03cb2e34f3c5bf9336e4f2b80dae15f06a1a8046113d0a6b99"

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
