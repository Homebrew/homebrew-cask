cask "jollysfastvnc" do
  version "1.58,1925902"
  sha256 :no_check

  url "https://www.jinx.de/JollysFastVNC_files/JollysFastVNC.current.dmg"
  name "JollysFastVNC"
  homepage "https://www.jinx.de/JollysFastVNC.html"

  livecheck do
    url "https://www.jinx.de/JollysFastVNC.update.12.x86_64.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "JollysFastVNC.app"

  uninstall quit: "de.jinx.JollysFastVNC"

  zap trash: [
    "~/Library/Caches/de.jinx.JollysFastVNC",
    "~/Library/Logs/JollysFastVNC.log*",
    "~/Library/Preferences/de.jinx.JollysFastVNC.plist",
    "~/Library/Saved Application State/de.jinx.JollysFastVNC.savedState",
  ]
end
