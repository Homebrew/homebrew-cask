cask "creality-print" do
  version "5.1.2.9904,54e6430232ec317e8ecc9a3d9fce78ba"
  sha256 "d389e529fc6d3060c6bae5d4615df061d6bd090e7466101659d27a2d24bfcffa"

  url "https://file2-cdn.creality.com/file/#{version.csv.second}/Creality_Print-v#{version.csv.first}-macx-x86_64-Release.dmg"
  name "Creality Print"
  desc "Slicer and cloud services for some Creality FDM 3D printers"
  homepage "https://www.creality.com/pages/download-software"

  livecheck do
    url :homepage
    regex(%r{/([^/]+)/Creality[._-]Print[._-]v?(\d+(?:\.\d+)+)[._-]macx[._-]x86[._-]64[._-]Release\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "Creality Print.app"

  zap trash: [
    "~/Library/Application Support/Creality",
    "~/Library/Caches/Creality",
    "~/Library/Saved Application State/com.creality.crealityprint.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
