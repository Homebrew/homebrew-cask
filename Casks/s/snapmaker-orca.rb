cask "snapmaker-orca" do
  arch arm: "arm64", intel: "x86_64"

  version "2.1.5"
  sha256 arm:   "1380450f6f9db642f0553424be6a259a33e1c5cd6922972d6a615d54822d96c6",
         intel: "5559ff5e212e9efd2ef3334a2fba4c79b61e0e6302a5f51768a891b5432ae2f7"

  url "https://github.com/snapmaker/orcaslicer/releases/download/v#{version}/Snapmaker_Orca_Mac_#{arch}_V#{version}.dmg",
      verified: "github.com/snapmaker/orcaslicer/"
  name "Snapmaker Orca"
  desc "3D printing software"
  homepage "https://www.snapmaker.com/snapmaker-orca"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Snapmaker Orca.app"

  zap trash: [
    "~/Library/Application Support/Snapmaker_Orca",
    "~/Library/Caches/com.snapmaker.snapmaker-orca",
    "~/Library/HTTPStorages/com.snapmaker.snapmaker-orca.binarycookies",
    "~/Library/Preferences/com.snapmaker.snapmaker-orca.plist",
    "~/Library/WebKit/com.snapmaker.snapmaker-orca",
  ]
end
