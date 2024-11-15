cask "bambu-studio" do
  version "01.10.01.50,20241115162711,01.10.01.50"
  sha256 "370ec8bb99d31990614abc354a0eebe586e66c21770af11c79cac02ef8bc6843"

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
