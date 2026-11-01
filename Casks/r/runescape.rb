cask "runescape" do
  version "1.0"
  sha256 :no_check

  url "https://content.runescape.com/downloads/osx/RuneScape.dmg"
  name "RuneScape"
  desc "Massively multiplayer online fantasy role-playing game"
  homepage "https://www.runescape.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on :macos

  app "RuneScape.app"

  zap trash: [
        "~/Jagex/launcher",
        "~/Jagex/RuneScape",
        "~/Library/Preferences/com.jagex.RuneScape.plist",
        "~/Library/Preferences/RuneScape Preferences",
      ],
      rmdir: "~/Jagex"

  caveats do
    requires_rosetta
  end
end
