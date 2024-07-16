cask "creality-print" do
  version "5.1.1.9490,21e5a2a7b4468f713ce0f2147c7f0115"
  sha256 "c84fc2d6a2b095a1a08db1d923cf9192e5daa9825b62928ecf24aeebf295cebe"

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
