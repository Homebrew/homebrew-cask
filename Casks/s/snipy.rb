cask "snipy" do
  version "1.0.3"
  sha256 "ed1e120c5f59f72f5b45fbdc0e1a2c43fc16dd6d4567fc936da2a3b4e02fa004"

  url "https://get.snipy.io/Snipy-#{version}-mac.zip"
  name "Snipy"
  desc "Snippet manager with sharing support"
  homepage "https://snipy.io/"

  disable! date: "2024-05-23", because: :no_longer_available

  auto_updates true

  app "Snipy.app"

  zap trash: [
    "~/Library/Application Support/Snipy",
    "~/Library/Logs/Snipy",
    "~/Library/Preferences/io.snipy.app.plist",
    "~/Library/Saved Application State/io.snipy.app.savedState",
  ]
end
