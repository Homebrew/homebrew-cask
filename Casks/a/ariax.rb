cask "ariax" do
  version "1.0.7"
  sha256 "f6495f4ad5e753e19b7e796abc9738293232e190290ffc26a74ea35689a08698"

  url "https://github.com/saltpi/Aria.X/releases/download/#{version}/AriaX.dmg"
  name "AriaX"
  desc "Aria2 download manager"
  homepage "https://github.com/saltpi/Aria.X"

  auto_updates true
  depends_on macos: :sonoma

  app "AriaX.app"

  zap trash: [
    "~/Library/Application Scripts/cn.saltpi.app.Aria2Helper",
    "~/Library/Application Scripts/cn.saltpi.app.AriaX",
    "~/Library/Application Scripts/cn.saltpi.app.AriaX.Extension",
    "~/Library/Application Scripts/group.cn.saltpi.app.AriaX",
    "~/Library/Caches/cn.saltpi.app.AriaX",
    "~/Library/Containers/cn.saltpi.app.Aria2Helper",
    "~/Library/Containers/cn.saltpi.app.AriaX",
    "~/Library/Containers/cn.saltpi.app.AriaX.Extension",
    "~/Library/Group Containers/group.cn.saltpi.app.AriaX",
    "~/Library/HTTPStorages/cn.saltpi.app.AriaX",
    "~/Library/Preferences/cn.saltpi.app.AriaX.plist",
  ]
end
