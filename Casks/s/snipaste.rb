cask "snipaste" do
  version "2.8.6-Beta"
  sha256 "b6f6a6020eff2328cedf9d748fbae667ad1b68a47ab435f64b5f4bb053e54999"

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
