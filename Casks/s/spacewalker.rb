cask "spacewalker" do
  version "1.7.5"
  sha256 "ea1d030e7e9f45168fb41f29354f55debb76cfb6a4d39f575d54a33d8d6dfc1c"

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
