cask "iconscout" do
  version "1.0.3"
  sha256 "db57125f638de130c9e344cdc79b2e3dcb1e2ba670b41aad7dc150adb4d7aacf"

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
