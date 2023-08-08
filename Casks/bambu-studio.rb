cask "bambu-studio" do
  version "01.07.03.50"
  sha256 "3c96f0f6d1169ea90017d6fc1890a1decf5f0e66ac456b8f3e83f6c56119b85e"

  url "https://public-cdn.bambulab.com/upgrade/studio/software/#{version}/Bambu_Studio_mac-v#{version}.dmg"
  name "Bambu Studio"
  desc "3D model slicing software for 3D printers, maintained by Bambu Lab"
  homepage "https://bambulab.com/en/download/studio"

  livecheck do
    url :homepage
    regex(/href=.*?Bambu[._-]Studio[._-]mac[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
