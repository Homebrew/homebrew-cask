cask "spacewalker" do
  version "1.8.7"
  sha256 "c6d3b7e7958cc559be6d2a20ee36a394c64362f0ad09fb90c8c84b0360c60199"

  url "https://static.viture.dev/external-file/macOS/SpaceWalker-Installer_v#{version}.dmg"
  name "SpaceWalker"
  desc "Use virtual monitors with Viture XR glasses"
  homepage "https://www.viture.com/academy/spacewalker/desktop"

  livecheck do
    url "https://static.viture.dev/external-file/macos/appstart_macos.txt"
    strategy :json do |json|
      json["macNewVersion"]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "SpaceWalker.app"

  zap trash: [
    "~/Library/Application Support/com.viture.spacewalker",
    "~/Library/Caches/com.viture.spacewalker",
    "~/Library/HTTPStorages/com.viture.spacewalker",
    "~/Library/Preferences/com.viture.spacewalker.plist",
  ]
end
