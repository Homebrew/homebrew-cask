cask "jalview" do
  arch arm: "aarch64", intel: "x64"

  version "2.11.5.0"
  sha256 arm:   "144adb8e649954403281bde18445beafc6a0f2fd74d8d00c7141cd398345d388",
         intel: "3f2301f322700b821fac8353ce72d286e25d2b261a0a0b7bc582875730c6618f"

  url "https://www.jalview.org/downloads/installers/release/Jalview-#{version.dots_to_underscores}-macos-#{arch}-java_8.dmg"
  name "Jalview"
  desc "Multiple sequence alignment editor, visualiser, analysis and figure generator"
  homepage "https://www.jalview.org/"

  livecheck do
    url "https://www.jalview.org/downloads/installers/release/Jalview-latest-macos-x64-java_8.dmg"
    regex(/Jalview-(\d(?:_\d+)*)-macos-x64-java_8\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
    end
  end

  app "Jalview.app"
  binary "#{appdir}/Jalview.app/Contents/MacOS/jalview"

  zap trash: [
    "~/.jalview_properties",
    "~/Library/Saved Application State/org.jalview.jalview-desktop.savedState",
  ]
end
