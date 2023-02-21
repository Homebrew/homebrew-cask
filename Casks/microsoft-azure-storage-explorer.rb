cask "microsoft-azure-storage-explorer" do
  arch arm: "arm64", intel: "x64"

  version "1.28.0"
  sha256 arm:   "c53d9fb68579d807943776e9750bf11e97e1ff48866510daf222dbae583003ce",
         intel: "76094a5722243b8c594dbc23c1cbbfdc20fb27deec151f4deb18d4c7a10df8a7"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/StorageExplorer-darwin-#{arch}.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
