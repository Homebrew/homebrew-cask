cask "hookshot" do
  version "1.6.3"
  sha256 "59156731c816a6a316be7898144ab1a52f1ad806c72ba857c0400194876dcb18"

  url "https://hookshot.app/downloads/Hookshot#{version}.dmg"
  appcast "https://hookshot.app/downloads/updates.xml"
  name "Hookshot"
  homepage "https://hookshot.app/"

  depends_on macos: ">= :sierra"

  app "Hookshot.app"

  zap trash: [
    "~/Library/Application Support/Hookshot",
    "~/Library/Caches/com.knollsoft.Hookshot",
    "~/Library/Cookies/com.knollsoft.Hookshot.binarycookies",
    "/Library/Preferences/com.knollsoft.Hookshot.plist",
  ]
end
