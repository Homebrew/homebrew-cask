cask "creality-print" do
  arch arm: "arm64", intel: "x86_64"

  version "7.1.1.4472"
  sha256 arm:   "3d75c51b43dfa81b908f44e2bb3e27c33880dea8a44f4819f31a0d0142a5067b",
         intel: "b85a00922726dccb5eddfe785efd646f9c0ad0e31634fbb7468cda2199f114a4"

  url "https://github.com/CrealityOfficial/CrealityPrint/releases/download/v#{version.major_minor_patch}/CrealityPrint-#{version}-macx-#{arch}-Release.dmg",
      verified: "github.com/CrealityOfficial/CrealityPrint/"
  name "Creality Print"
  desc "Slicer and cloud services for some Creality FDM 3D printers"
  homepage "https://www.creality.com/pages/download-software"

  livecheck do
    url :url
    regex(/^Creality[._-]?Print[._-]v?(\d+(?:\.\d+)+)[._-]macx[._-]#{arch}[._-]Release\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on :macos

  app "Creality Print.app"

  zap trash: [
    "~/Library/Application Support/Creality",
    "~/Library/Caches/Creality",
    "~/Library/Saved Application State/com.creality.crealityprint.savedState",
  ]
end
