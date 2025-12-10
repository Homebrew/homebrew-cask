cask "jalview" do
  arch arm: "aarch64", intel: "x64"

  version "2.11.5.1"
  sha256 arm:   "341a3b2e52cfc0512df6767892a9c1dc8a458dccab1256f3686b3ad9288a7f47",
         intel: "3808f040215d353b2367882dc5e458a6449451e21625df6e8e96bc9f99337341"

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
