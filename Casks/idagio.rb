cask "idagio" do
  version "1.6.1"
  sha256 "65893c74eb8dd8d07eb504496343ac04cda351c81bca9e0ed1b34a2430ad2725"

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name "IDAGIO"
  desc "Classical music streaming app"
  homepage "https://www.idagio.com/"

  livecheck do
    url "https://app.idagio.com/download"
    regex(/href=.*?IDAGIO[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
