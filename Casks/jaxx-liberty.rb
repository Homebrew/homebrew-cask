cask "jaxx-liberty" do
  version "2.6.5"
  sha256 "2963f0cbf9c0cc7568b4cc25cd716502472a8ecb8b785ba20483a3974d5e0252"

  url "https://download-liberty.jaxx.io/Jaxx.Liberty-#{version}.dmg"
  name "Jaxx Blockchain Wallet"
  desc "Blockchain Wallet, holdings, crypto prices and news"
  homepage "https://jaxx.io/"

  livecheck do
    url "https://download-liberty.jaxx.io/latest-mac.yml"
    strategy :electron_builder
  end

  app "Jaxx Liberty.app"

  zap trash: [
    "~/Library/Application Support/com.liberty.jaxx",
    "~/Library/Logs/com.liberty.jaxx",
    "~/Library/Preferences/com.liberty.jaxxliberty.plist",
    "~/Library/Saved Application State/com.liberty.jaxxliberty.savedState",
  ]
end
