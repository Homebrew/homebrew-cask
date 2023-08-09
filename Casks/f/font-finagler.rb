cask "font-finagler" do
  version "2.0.1"
  sha256 "2aeede539ec31b6f68b8332f2ca017ebe11d9f0f3eb3b21c546d17b575c07b23"

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
    "~/Library/HTTPStorages/com.markdouma.FontFinagler",
    "~/Library/HTTPStorages/com.markdouma.FontFinagler.binarycookies",
    "~/Library/Preferences/com.markdouma.FontFinagler.plist",
    "~/Library/Caches/com.markdouma.FontFinagler",
  ]
end
