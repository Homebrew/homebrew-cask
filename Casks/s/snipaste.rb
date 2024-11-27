cask "snipaste" do
  version "2.10.3"
  sha256 "92587f79bfd82a0377f223da72711f3e3b185b9e41f0f33179f6ddcfba9feec2"

  url "https://bitbucket.org/liule/snipaste/downloads/Snipaste-#{version}.dmg",
      verified: "bitbucket.org/liule/snipaste/"
  name "Snipaste"
  desc "Snip or pin screenshots"
  homepage "https://www.snipaste.com/"

  livecheck do
    url "https://dl.snipaste.com/mac"
    regex(/Snipaste[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
