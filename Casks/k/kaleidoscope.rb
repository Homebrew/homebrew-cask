cask "kaleidoscope" do
  version "5.3,7379"
  sha256 "e44bbfaebc0abe2fe6defe44e21232e17c14d0eea0f94c4165caefe84d1e000e"

  url "https://updates.kaleidoscope.app/v#{version.major}/prod/Kaleidoscope-#{version.csv.first}-#{version.csv.second}.app.zip"
  name "Kaleidoscope"
  desc "Spot and merge differences in text and image files or folders"
  homepage "https://kaleidoscope.app/"

  livecheck do
    url "https://updates.kaleidoscope.app/v#{version.major}/prod/appcast"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: %w[
    kaleidoscope@2
    kaleidoscope@3
    ksdiff
  ]
  depends_on macos: ">= :ventura"

  app "Kaleidoscope.app"

  postflight do
    contents = "#{appdir}/Kaleidoscope.app/Contents"
    system_command "#{contents}/Resources/Integration/scripts/install_ksdiff",
                   args: ["#{contents}/MacOS", "#{HOMEBREW_PREFIX}/bin"]
  end

  uninstall quit:    "app.kaleidoscope.v#{version.major}",
            pkgutil: "app.kaleidoscope.uninstall_ksdiff"

  zap trash: [
    "~/Library/Application Support/app.kaleidoscope.v*",
    "~/Library/Application Support/com.blackpixel.kaleidoscope",
    "~/Library/Application Support/Kaleidoscope",
    "~/Library/Caches/app.kaleidoscope.v*",
    "~/Library/Caches/com.blackpixel.kaleidoscope",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope",
    "~/Library/Preferences/app.kaleidoscope.v*.plist",
    "~/Library/Preferences/com.blackpixel.kaleidoscope.plist",
    "~/Library/Saved Application State/app.kaleidoscope.v*.savedState",
    "~/Library/Saved Application State/com.blackpixel.kaleidoscope.savedState",
    "~/Library/WebKit/app.kaleidoscope.v*",
  ]
end
