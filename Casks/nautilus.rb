cask "nautilus" do
  version "1.3.1"
  sha256 "ded1a3837122bd1788a70f10af026fdf2774d3821e24c429658a09fa55482fd7"

  url "https://nautilusdev.com/release/Nautilus-#{version}.dmg"
  appcast "https://github.com/oslabs-beta/nautilus/releases.atom"
  name "Nautilus"
  homepage "https://nautilusdev.com/"

  app "Nautilus.app"

  zap trash: [
    "~/Library/Application Support/nautilus",
    "~/Library/Saved Application State/com.nautilus.app.savedState",
    "~/Library/Preferences/com.nautilus.app.plist",
  ]
end
