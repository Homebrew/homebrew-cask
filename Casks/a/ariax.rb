cask "ariax" do
  version "1.0.7,17"
  sha256 :no_check

  url "https://artifact.saltpi.cn/build/AriaX/macOS/latest.dmg"
  name "AriaX"
  desc "Aria2 download manager"
  homepage "https://ariax.saltpi.cn/"

  livecheck do
    url "https://artifact.saltpi.cn/build/AriaX/macOS/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "AriaX.app"

  zap trash: [
    "~/Library/Application Scripts/cn.saltpi.app.AriaX",
    "~/Library/Application Scripts/group.cn.saltpi.app.AriaX",
    "~/Library/Containers/cn.saltpi.app.AriaX",
    "~/Library/Group Containers/group.cn.saltpi.app.AriaX",
  ]
end
