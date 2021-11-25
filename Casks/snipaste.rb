cask "snipaste" do
  version "2.7-Beta"
  sha256 "b441f2e0059494dbfcc0dcf89c9cb86dc5a15cd15134a158af7da87fb6b14a02"

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
