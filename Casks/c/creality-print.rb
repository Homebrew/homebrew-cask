cask "creality-print" do
  arch arm: "arm64", intel: "x86_64"

  version "5.1.7.10514"
  sha256 arm:   "a45d861399ef48110aaffa76a94972c780bd06177121f818127af810534b135e",
         intel: "86bb20faf75f36275ab593810f9377f7c4e37e4cc8a8fea2124f9a209aacffa2"

  url "https://github.com/CrealityOfficial/CrealityPrint/releases/download/v#{version.csv.first.major_minor_patch}/Creality_Print-v#{version.csv.first}-macx-#{arch}-Release.dmg",
      verified: "github.com/CrealityOfficial/CrealityPrint/"
  name "Creality Print"
  desc "Slicer and cloud services for some Creality FDM 3D printers"
  homepage "https://www.creality.com/pages/download-software"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/Creality[._-]Print[._-]v?(\d+(?:\.\d+)+)[._-]macx[._-]#{arch}[._-]Release\.dmg/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  app "Creality Print.app"

  zap trash: [
    "~/Library/Application Support/Creality",
    "~/Library/Caches/Creality",
    "~/Library/Saved Application State/com.creality.crealityprint.savedState",
  ]
end
