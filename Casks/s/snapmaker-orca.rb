cask "snapmaker-orca" do
  version "2.4.0"
  sha256 "fc767bd09e523870a5164426b2d85fdd2259936079ab2159b0ebf4ab21bdd97c"

  url "https://github.com/snapmaker/orcaslicer/releases/download/v#{version}/Snapmaker_Orca_Mac_universal_V#{version}.dmg"
  name "Snapmaker Orca"
  desc "Slicing software for Snapmaker 3D printers, a fork of OrcaSlicer"
  homepage "https://www.snapmaker.com/snapmaker-orca"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Snapmaker Orca.app"

  uninstall quit: "com.snapmaker.snapmaker-orca"

  zap trash: [
    "~/Library/Application Support/Snapmaker_Orca",
    "~/Library/Caches/com.snapmaker.snapmaker-orca",
    "~/Library/HTTPStorages/com.snapmaker.snapmaker-orca.binarycookies",
    "~/Library/Preferences/com.snapmaker.snapmaker-orca.plist",
    "~/Library/WebKit/com.snapmaker.snapmaker-orca",
  ]
end
