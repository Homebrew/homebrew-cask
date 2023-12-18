cask "bambu-studio" do
  version "01.08.02.56,3cb3425770"
  sha256 "eb8d3a9ecd3c347acbb2d2a5524a4d1310c721aeeabd940ee6cb0823f4324970"

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
