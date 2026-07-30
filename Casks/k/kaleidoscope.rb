cask "kaleidoscope" do
  version "7.0.1,10509"
  sha256 "56834d2ac91c14eaf5109e37f971a03903489674e26b2c7db9d2ea7cdc834e77"

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
  ]
  depends_on macos: :ventura

  app "Kaleidoscope.app"

  postflight_steps do
    run "Kaleidoscope.app/Contents/Resources/Integration/scripts/install_ksdiff",
        args: ["{{appdir}}/Kaleidoscope.app/Contents/MacOS", "{{HOMEBREW_PREFIX}}/bin"], base: :appdir
  end

  uninstall quit:    "app.kaleidoscope.v#{version.major}",
            pkgutil: "app.kaleidoscope.uninstall_ksdiff"

  zap trash: [
    "~/Library/Application Scripts/app.kaleidoscope.v*.KaleidoscopePrism",
    "~/Library/Application Scripts/app.kaleidoscope.v*.KSShareExtension",
    "~/Library/Application Support/app.kaleidoscope.v*",
    "~/Library/Application Support/com.blackpixel.kaleidoscope",
    "~/Library/Application Support/Kaleidoscope",
    "~/Library/Caches/app.kaleidoscope.v*",
    "~/Library/Caches/com.blackpixel.kaleidoscope",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope",
    "~/Library/Containers/app.kaleidoscope.v*.KaleidoscopePrism",
    "~/Library/Containers/app.kaleidoscope.v*.KSShareExtension",
    "~/Library/HTTPStorages/app.kaleidoscope.v*",
    "~/Library/Preferences/app.kaleidoscope.v*.plist",
    "~/Library/Preferences/com.blackpixel.kaleidoscope.plist",
    "~/Library/Saved Application State/app.kaleidoscope.v*.savedState",
    "~/Library/Saved Application State/com.blackpixel.kaleidoscope.savedState",
    "~/Library/WebKit/app.kaleidoscope.v*",
  ]
end
