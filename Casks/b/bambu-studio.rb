cask "bambu-studio" do
  version "02.01.00.59,20250530092153"
  sha256 "31aa8fe0f8d944f15062e32e6790103ca9497a12459356e045fcb7b87aa87126"

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
