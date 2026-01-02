cask "spacewalker" do
  version "1.8.0"
  sha256 "f2ad376aa5d0c971b554a706444057e315de14c1e146de00a0e31e02d9f90e68"

  url "https://static.viture.dev/external-file/macOS/SpaceWalker-Installer_v#{version}.dmg",
      verified: "static.viture.dev/external-file/macOS/"
  name "SpaceWalker"
  desc "Use virtual monitors with Viture XR glasses"
  homepage "https://academy.viture.com/xr_glasses/spacewalker_mac"

  livecheck do
    url "https://static.viture.dev/external-file/macos/appstart_macos.txt"
    strategy :json do |json|
      json["macNewVersion"]
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "SpaceWalker.app"

  zap trash: [
    "~/Library/Application Support/com.viture.spacewalker",
    "~/Library/Caches/com.viture.spacewalker",
    "~/Library/HTTPStorages/com.viture.spacewalker",
    "~/Library/Preferences/com.viture.spacewalker.plist",
  ]
end
