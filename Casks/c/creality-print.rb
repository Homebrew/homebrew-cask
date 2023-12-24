cask "creality-print" do
  version "4.3.8.6984"
  sha256 "d2febf68dce011ffa317837e5e63d6729cdd254894ba34129a57118869b5cf91"

  url "https://github.com/CrealityOfficial/CrealityPrint/releases/download/v#{version.split(".")[0..2].join(".")}/Creality_Print-v#{version}-macx-Release.dmg"
  name "Creality Print"
  desc "Slicer and cloud services for some Creality FDM 3D printers"
  homepage "https://github.com/CrealityOfficial"

  livecheck do
    url "https://api.github.com/repos/CrealityOfficial/CrealityPrint/releases"
    strategy :page_match do |page|
      page.scan(/Creality_Print-v?(\d+(?:\.\d+)+)-macx-Release\.dmg/i).map(&:first)
    end
  end

  app "Creality Print.app"

  zap trash: [
    "~/Library/Application Support/Creality",
    "~/Library/Caches/Creality",
    "~/Library/Saved Application State/com.creality.crealityprint.savedState",
  ]
end
