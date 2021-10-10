cask "kaleidoscope" do
  if MacOS.version <= :catalina
    version "2.4.2,1455:sep-7-2021"
    sha256 "d2ccd4c63781f836f2b5018ba51c286829929d43d74ea6300144e7c7a50f911a"
    url "https://updates.kaleidoscope.app/v2/prod/Kaleidoscope-#{version.before_comma}-#{version.after_comma.before_colon}-#{version.after_colon}.app.zip"

    livecheck do
      url "https://updates.kaleidoscope.app/v#{version.major}/prod/appcast"
      strategy :sparkle do |item|
        match = item.url.match(%r{/Kaleidoscope-(\d+(?:\.\d+)*)-(\d+)-(\w+(?:-\d+)*)\.app\.zip}i)
        "#{match[1]},#{match[2]}:#{match[3]}"
      end
    end
  else
    version "3.0.2,2013"
    sha256 "ff89bee907b911678009ebdcf75423e940b11d48b0379d22a7873d562a91f500"
    url "https://updates.kaleidoscope.app/v#{version.major}/prod/Kaleidoscope-#{version.before_comma}-#{version.after_comma}.app.zip"

    livecheck do
      url "https://updates.kaleidoscope.app/v#{version.major}/prod/appcast"
      strategy :sparkle
    end
  end

  name "Kaleidoscope"
  desc "Spot and merge differences in text and image files or folders"
  homepage "https://www.kaleidoscope.app/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Kaleidoscope.app"
  binary "#{appdir}/Kaleidoscope.app/Contents/Resources/bin/ksdiff"

  zap trash: [
    "~/Library/Application Support/app.kaleidoscope.v*",
    "~/Library/Application Support/com.blackpixel.kaleidoscope",
    "~/Library/Application Support/Kaleidoscope",
    "~/Library/Caches/com.blackpixel.kaleidoscope",
    "~/Library/Caches/app.kaleidoscope.v*",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope",
    "~/Library/Preferences/app.kaleidoscope.v*.plist",
    "~/Library/Preferences/com.blackpixel.kaleidoscope.plist",
    "~/Library/Saved Application State/app.kaleidoscope.v*.savedState",
    "~/Library/Saved Application State/com.blackpixel.kaleidoscope.savedState",
    "~/Library/WebKit/app.kaleidoscope.v*",
  ]
end
