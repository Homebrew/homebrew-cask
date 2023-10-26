cask "idagio" do
  version "1.9.9"
  sha256 "3a1178dba068d3f5c6a9bd5e7e10e8b7b6154f2ed1b7d7d915253645ed431208"

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
