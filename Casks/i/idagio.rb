cask "idagio" do
  version "1.9.4"
  sha256 "2f761032fe501f2c1abed04397dc81fc903ce617e8fd8bf523cdde0da49e0305"

  url "https://dl.idagio.com/IDAGIO-#{version}-universal.dmg"
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
