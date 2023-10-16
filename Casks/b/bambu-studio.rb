cask "bambu-studio" do
  version "01.07.07.89,b60b436b40"
  sha256 "8339447fcacc7e4fecf45451e4558a686c49c50da6b79b4d2b37fe144b8fcaa8"

  url "https://public-cdn.bambulab.com/upgrade/studio/software/#{version.csv.first}/#{version.csv.second}/Bambu_Studio_mac-v#{version.csv.first}.dmg"
  name "Bambu Studio"
  desc "3D model slicing software for 3D printers, maintained by Bambu Lab"
  homepage "https://bambulab.com/en/download/studio"

  livecheck do
    url :homepage
    regex(%r{/(\w+)/Bambu[._-]Studio[._-]mac[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.second},#{match.first}" }
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
