cask "bambu-studio" do
  version "01.10.00.89,20241112123329,01.10.00.89"
  sha256 "1246ccad17b1b023d300e8242f37df4f978b0b86fd369f5fc62f1f83be263128"

  url "https://github.com/bambulab/BambuStudio/releases/download/v#{version.csv.third || version.csv.first}/Bambu_Studio_mac-v#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/bambulab/BambuStudio/"
  name "Bambu Studio"
  desc "3D model slicing software for 3D printers, maintained by Bambu Lab"
  homepage "https://bambulab.com/en/download/studio"

  livecheck do
    url :homepage
    regex(%r{href=.*/v?(\d+(?:\.\d+)+)/Bambu[._-]Studio[._-]mac[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        if match[2] == match[0]
          "#{match[1]},#{match[2]}"
        else
          "#{match[1]},#{match[2]},#{match[0]}"
        end
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "BambuStudio.app"

  zap trash: [
    "/Library/Logs/DiagnosticsReports/BambuStudio*",
    "~/Library/Application Support/BambuStudio",
    "~/Library/Caches/com.bambulab.bambu-studio",
    "~/Library/HTTPStorages/com.bambulab.bambu-studio.binarycookies",
    "~/Library/Preferences/com.bambulab.bambu-studio.plist",
    "~/Library/Saved Application State/com.bambulab.bambu-studio.savedState",
    "~/Library/WebKit/com.bambulab.bambu-studio",
  ]
end
