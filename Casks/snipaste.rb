cask "snipaste" do
  version "2.8.5-Beta"
  sha256 "46ecdaf721aefeafa97681c82c0404bc2b67056bfcab1f03f922b501d017897a"

  url "https://bitbucket.org/liule/snipaste/downloads/Snipaste-#{version}.dmg",
      verified: "bitbucket.org/liule/snipaste/"
  name "Snipaste"
  desc "Snip or pin screenshots"
  homepage "https://www.snipaste.com/"

  livecheck do
    url "https://www.snipaste.com/all_versions"
    regex(/"mac_version"\s*:\s*"v?(.*?)"/i)
  end

  auto_updates true

  app "Snipaste.app"

  uninstall quit: "com.Snipaste"

  zap trash: [
    "~/.snipaste/",
    "~/Library/Preferences/com.Snipaste.plist",
  ]
end
