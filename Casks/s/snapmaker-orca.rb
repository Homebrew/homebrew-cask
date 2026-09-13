cask "snapmaker-orca" do
  version "2.3.6"
  sha256 "d19a670090e23eec417aa4e15de75efc57eab993328a59ed5e1e14459c0b5614"

  url "https://github.com/snapmaker/orcaslicer/releases/download/V#{version}/Snapmaker_Orca_Mac_universal_V#{version}.dmg"
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

  zap trash: [
    "~/Library/Application Support/Snapmaker_Orca",
    "~/Library/Caches/com.snapmaker.snapmaker-orca",
    "~/Library/HTTPStorages/com.snapmaker.snapmaker-orca.binarycookies",
    "~/Library/Preferences/com.snapmaker.snapmaker-orca.plist",
    "~/Library/WebKit/com.snapmaker.snapmaker-orca",
  ]
end
