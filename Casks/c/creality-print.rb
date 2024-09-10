cask "creality-print" do
  version "5.1.4.10249,6d12d03c600006f52e3bd31411258dab"
  sha256 "9a32f88c0fa69ce657b5424af42e8a55462e73742f5d67e70be1b961710d4472"

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
