cask "idagio" do
  version "1.5.3"
  sha256 "e6e59d632a350d5bb53ebf6e4352989e3d626a6bb071f46559beaa3c19947989"

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
