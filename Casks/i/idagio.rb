cask "idagio" do
  version "1.12.1"
  sha256 "f4020ba80839aa0cc786748b656ea0f5ba4c73ac856060e9366189a3bf1e3495"

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name "IDAGIO"
  desc "Classical music streaming app"
  homepage "https://www.idagio.com/"

  livecheck do
    url "https://dl.idagio.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "IDAGIO.app"

  zap trash: [
    "~/Library/Application Support/IDAGIO",
    "~/Library/Logs/IDAGIO",
    "~/Library/Preferences/com.idagio.desktop.plist",
    "~/Library/Saved Application State/com.idagio.desktop.savedState",
  ]
end
