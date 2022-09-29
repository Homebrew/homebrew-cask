cask "snapmaker-luban" do
  version "4.4.0"
  sha256 "2d5f0414ee91a1dc7673ce5b4175e1baaad5d769e45a88a38240d131184c647f"

  url "https://github.com/Snapmaker/Luban/releases/download/v#{version}/Snapmaker-Luban-#{version}-mac.zip",
      verified: "github.com/Snapmaker/Luban/"
  name "Snapmaker Luban"
  desc "3D printing software"
  homepage "https://luban.xyz/"

  livecheck do
    url "https://snapmaker.oss-cn-beijing.aliyuncs.com/snapmaker.com/download/luban/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Snapmaker Luban.app"

  zap trash: [
    "~/Library/Caches/com.snapmaker.luban",
    "~/Library/Caches/com.snapmaker.luban.ShipIt",
    "~/Library/Preferences/com.snapmaker.luban.plist",
    "~/Library/Preferences/com.snapmaker.luban.helper.plist",
    "~/Library/Preferences/ByHost/com.snapmaker.luban.ShipIt.*.plist",
  ]
end
