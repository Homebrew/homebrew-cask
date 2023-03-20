cask "bambu-studio" do
  version "01.05.00.61"
  sha256 "a0e6da9b0823ef128cb87f7302a472f4cc8a96589e43bb47a519be6fd0da65bb"

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
