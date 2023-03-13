cask "runescape" do
  version "1.0"
  sha256 :no_check

  url "https://content.runescape.com/downloads/osx/RuneScape.dmg"
  name "RuneScape"
  homepage "https://www.runescape.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "RuneScape.app"
end
