cask "snapmaker-luban" do
  version "4.4.0"
  sha256 "6d37bbb0d0cb62116b36cf7d55119eabe3f9697518957da7b84cf279d787af06"

  url "https://snapmaker.oss-cn-beijing.aliyuncs.com/snapmaker.com/download/luban/Snapmaker-Luban-#{version}-mac.zip",
      verified: "snapmaker.oss-cn-beijing.aliyuncs.com"
  name "Snapmaker Luban"
  desc "Intuitive and Powerful 3D Printing Software"
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
