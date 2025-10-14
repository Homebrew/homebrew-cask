cask "bambu-studio" do
  version "02.03.00.70,20251014214058"
  sha256 "7275ee13447986451a3305207d3e99aebd32ac0d8b761689fdbe7b8b77a9fac8"

  url "https://github.com/bambulab/BambuStudio/releases/download/v#{version.csv.third || version.csv.first}/Bambu_Studio_mac-v#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/bambulab/BambuStudio/"
  name "Bambu Studio"
  desc "3D model slicing software for 3D printers, maintained by Bambu Lab"
  homepage "https://bambulab.com/en/download/studio"

  livecheck do
    url :url
    regex(%r{/\D*(\d+(?:\.\d+)+[^/]*?)/Bambu[._-]Studio(?:[._-]mac)?[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.dmg}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        (match[2] == match[1]) ? "#{match[2]},#{match[3]}" : "#{match[2]},#{match[3]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

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
