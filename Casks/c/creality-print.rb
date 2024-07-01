cask "creality-print" do
  version "5.0.3.8744,903bb6a14f14f1a2a916583691e4f890"
  sha256 "45a055b77220f93f5ee206261b94caf4f4a8c49437c6fb296584dbecc2391090"

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
