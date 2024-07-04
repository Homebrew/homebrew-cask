cask "snipaste" do
  version "2.9.2-Beta"
  sha256 "909c1a853df7e6dbe094aa501ccb9a47ecf1ca0a76dc17a502f5a01e162c3941"

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
