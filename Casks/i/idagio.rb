cask "idagio" do
  version "1.11.1"
  sha256 "1fd789edd8ebc3b4eb76792c5e45d950e90cdb4985302abfb1c860a89633070d"

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
