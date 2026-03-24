cask "snapmaker-orca" do
  version "2.3.0"
  sha256 "2d8258c745aac50e697a2bd1c261950aa53fca46f60ac6e851abf9f0d516e14b"

  url "https://github.com/snapmaker/orcaslicer/releases/download/v#{version}/Snapmaker_Orca_Mac_universal_V#{version}.dmg",
      verified: "github.com/snapmaker/orcaslicer/"
  name "Snapmaker Orca"
  desc "Slicing software for Snapmaker 3D printers, a fork of OrcaSlicer"
  homepage "https://www.snapmaker.com/snapmaker-orca"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Snapmaker Orca.app"

  zap trash: [
    "~/Library/Application Support/Snapmaker_Orca",
    "~/Library/Caches/com.snapmaker.snapmaker-orca",
    "~/Library/HTTPStorages/com.snapmaker.snapmaker-orca.binarycookies",
    "~/Library/Preferences/com.snapmaker.snapmaker-orca.plist",
    "~/Library/WebKit/com.snapmaker.snapmaker-orca",
  ]
end
