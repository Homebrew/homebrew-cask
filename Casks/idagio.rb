cask "idagio" do
  version "1.1.1"
  sha256 "225ec900858133e771907f741c332f0a00e8c941f1cab25320c9f106957c96f9"

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name "IDAGIO"
  desc "Classical music streaming app"
  homepage "https://www.idagio.com/"

  livecheck do
    url "https://www.idagio.com/download"
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
