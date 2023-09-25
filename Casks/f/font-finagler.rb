cask "font-finagler" do
  version "2.0.2"
  sha256 "8d35039f669a66a50a17f3eaaaff82c3f510cceb963042a173746ec9f1520a60"

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
