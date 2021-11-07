cask "idagio" do
  version "1.1.2"
  sha256 "85a5558b2fff102b23771f4dcae676f003e64ce7705dff87fed104929faa369d"

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
