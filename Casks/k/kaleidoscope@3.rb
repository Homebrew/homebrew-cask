cask "kaleidoscope@3" do
  version "3.9,2176"
  sha256 "036eea0cfd11797a72e37aa41af3c3acf65f7d6e9d5d5f5945444d49e232b44e"

  url "https://updates.kaleidoscope.app/v#{version.major}/prod/Kaleidoscope-#{version.csv.first}-#{version.csv.second}.app.zip"
  name "Kaleidoscope v3"
  desc "Spot and merge differences in text and image files or folders"
  homepage "https://kaleidoscope.app/"

  # Upstream also includes the newest version across all major versions, so we
  # have to omit items with a different major version.
  livecheck do
    url "https://updates.kaleidoscope.app/v#{version.major}/prod/appcast"
    strategy :sparkle do |items|
      items.map do |item|
        next if item.short_version&.split(".")&.first != version.major

        item.nice_version
      end
    end
  end

  auto_updates true
  conflicts_with cask: %w[
    kaleidoscope
    kaleidoscope@2
  ]
  depends_on macos: ">= :big_sur"

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
