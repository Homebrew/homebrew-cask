cask "115" do
  # NOTE: "115" is not a version number, but an intrinsic part of the product name
  version "2.0.10.2"
  sha256 "83b45692a449220cb1918f1ca4fbf329e87cbc2c4810e44b2e312df30797c1bb"

  url "https://down.115.com/client/115pc/mac/115pc_v#{version}.dmg"
  name "115"
  name "115桌面版"
  desc "Client for the 115 cloud storage service"
  homepage "https://pc.115.com/index.html#mac"

  disable! date: "2024-07-25", because: :no_longer_available

  auto_updates true
  depends_on macos: ">= :high_sierra"

  installer script: "#{staged_path}/115生活.app/Contents/MacOS/115setup"

  uninstall quit: "org.115pc.115Desktop"
  uninstall delete: [
    "/Applications/115生活.app",
    "/Applications/115生活.app/Contents/app/115DocViewer.app",
    "/Applications/115生活.app/Contents/app/115Music.app",
    "/Applications/115生活.app/Contents/app/115Photo.app",
    "/Applications/115生活.app/Contents/app/115Player.app",
  ]

  zap trash: [
    "~/Library/Application Support/115生活",
    "~/Library/Saved Application State/org.115pc.115*",
  ]
end
