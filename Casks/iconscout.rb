cask "iconscout" do
  version "1.0.4"
  sha256 "6798ac8fe13bc92962d14e61943553daaf9f7107b351836a9549c8d3d7be38ea"

  url "https://iconscout.com/download/v#{version}/Iconscout-#{version}.dmg"
  name "Iconscout"
  desc "Desktop toolbar for Iconscout"
  homepage "https://iconscout.com/"

  livecheck do
    url "https://iconscout.com/download"
    regex(/Iconscout[._-]v?(\d+(?:\.\d+)+)/i)
  end

  app "Iconscout.app"

  zap trash: [
    "~/Library/Application Support/Iconscout",
    "~/Library/Caches/com.electron.iconscout",
    "~/Library/Caches/com.electron.iconscout.ShipIt",
    "~/Library/Preferences/com.electron.iconscout.plist",
    "~/Library/Saved Application State/com.electron.iconscout.savedState",
  ]
end
