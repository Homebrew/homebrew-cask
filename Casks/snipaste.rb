cask "snipaste" do
  version "2.6-Beta"
  sha256 "e51136e41f5bcf6363c359a9eec4ea045ed2185030540345b6fc0069484b27a4"

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

  zap trash: "~/Library/Preferences/com.Snipaste.plist"
end
