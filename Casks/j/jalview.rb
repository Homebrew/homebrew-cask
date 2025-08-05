cask "jalview" do
  arch arm: "aarch64", intel: "x64"

  version "2.11.4.0"
  sha256 arm:   "7c2c66b0dcf6e3aec70800870d9f4cdb97df5cb0b5427dbbed2ddd5f7a32c530",
         intel: "fbd3f59ee0575fbe80df58da154042b751d2a151e9262ae98bb54957a58592a8"

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
