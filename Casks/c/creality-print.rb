cask "creality-print" do
  version "5.1.0.9484,9fb6f1eed755c0485bfd604408628c20"
  sha256 "9723037339cf9c7af089e26f3cdbe65883b6bada43ae4296c6f6616447dfc06c"

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
