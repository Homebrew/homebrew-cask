cask "bambu-studio" do
  version "01.04.00.18"
  sha256 "1a44dcd9f1dd7a86533b63e5c9a7bbf700cc5b5234eed832f65ee22d1403c1a0"

  url "https://public-cdn.bambulab.com/upgrade/studio/software/#{version}/Bambu_Studio_mac-v#{version}.dmg"
  name "Bambu Studio"
  desc "3D model slicing software for 3D printers, maintained by Bambu Lab"
  homepage "https://bambulab.com/en/download/studio"

  livecheck do
    url :homepage
    regex(/href=.*?Bambu[._-]Studio[._-]mac[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

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
