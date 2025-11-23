cask "fontfinagler" do
  version "2.0.3"
  sha256 "40898491baaafcfc06df8a132ba3d161675d2df492c8a133bc807008469c106a"

  url "https://markdouma.com/fontfinagler/FontFinagler#{version}.dmg"
  name "Font Finagler"
  desc "Help troubleshoot misbehaving fonts"
  homepage "https://markdouma.com/fontfinagler/"

  livecheck do
    url "https://markdouma.com/fontfinagler/version.php"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Font Finagler.app"
  binary "#{appdir}/Font Finagler.app/Contents/MacOS/finagler"

  zap trash: [
    "~/Library/Caches/com.markdouma.FontFinagler",
    "~/Library/HTTPStorages/com.markdouma.FontFinagler",
    "~/Library/HTTPStorages/com.markdouma.FontFinagler.binarycookies",
    "~/Library/Preferences/com.markdouma.FontFinagler.plist",
  ]
end
