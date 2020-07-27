cask "jollysfastvnc" do
  version "1.58"
  sha256 "6271124c7b127069a5892075fda914c86e6d82030ce6b5db766d9b5c83b70d9d"

  url "https://www.jinx.de/JollysFastVNC_files/JollysFastVNC.current.dmg"
  appcast "https://www.jinx.de/JollysFastVNC.update.12.x86_64.xml"
  name "JollysFastVNC"
  homepage "https://www.jinx.de/JollysFastVNC.html"

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
