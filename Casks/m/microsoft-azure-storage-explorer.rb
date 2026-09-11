cask "microsoft-azure-storage-explorer" do
  arch arm: "arm64", intel: "x64"

  version "1.46.0"
  sha256 arm:   "d96f537addf70319d65a7e510242bfcde8b92117ab3a4adf04eda80453939d1d",
         intel: "b5838336619959398268b7e8cd9ce7528b81773c0028b21f47be26d3323c1d39"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/StorageExplorer-darwin-#{arch}.zip"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Microsoft Azure Storage Explorer.app"

  zap trash: [
    "~/Library/Application Support/StorageExplorer",
    "~/Library/Logs/StorageExplorer",
    "~/Library/Preferences/com.microsoft.StorageExplorer.plist",
  ]
end
