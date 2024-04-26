cask "snipaste" do
  version "2.9-Beta"
  sha256 "c96e71a2f4f313d1ed4976366c7530804a0d2ac7f3a1a34ba3e66dbf301d5866"

  url "https://bitbucket.org/liule/snipaste/downloads/Snipaste-#{version}.dmg",
      verified: "bitbucket.org/liule/snipaste/"
  name "Snipaste"
  desc "Snip or pin screenshots"
  homepage "https://www.snipaste.com/"

  livecheck do
    url "https://dl.snipaste.com/mac-beta"
    regex(/(\d+(?:\.\d+)+[._-]v?.*?)\.dmg/i)
    strategy :header_match
  end

  auto_updates true

  app "Snipaste.app"

  uninstall quit: "com.Snipaste"

  zap trash: [
    "~/.snipaste/",
    "~/Library/Preferences/com.Snipaste.plist",
  ]
end
