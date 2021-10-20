cask "start" do
  if Hardware::CPU.intel?
    version "0.298.2-127"
    sha256 "51e92e5f335a6fb84de3c85e4be2bd88b8abfece394f1555bfa60362ab264166"

    url "https://imgcdn.start.qq.com/cdn/mac.client/installer/START-Installer-#{version}.dmg"

    livecheck do
      url "https://api.start.qq.com/cfg/get?biztypes=macos-update-info"
      regex(%r{.*/START-Installer-([.\d\-]+)\.dmg}i)
    end
  else
    version "0.298.2-14"
    sha256 "369337b4b8da24c5874ef00f49113453a59f0f8b7e0149f0a6e8a90855991fa2"

    url "https://imgcdn.start.qq.com/cdn/mac.client/installer/m1/START-Installer-#{version}.dmg"

    livecheck do
      url "https://api.start.qq.com/cfg/get?biztypes=macos-update-info-arm"
      regex(%r{.*/START-Installer-([.\d\-]+)\.dmg}i)
    end
  end

  name "START"
  name "腾讯云游戏"
  desc "Tencent cloud gaming platform"
  homepage "https://start.qq.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "START.app"

  uninstall quit: "com.tencent.start.mac.Start"

  zap trash: [
    "~/Library/Caches/com.tencent.start.mac.Start",
    "~/Library/Caches/com.tencent.start.mac.Start.STGame",
    "~/Library/Group Containers/com.tencent.start.mac",
    "~/Library/Preferences/com.tencent.start.mac.Start.plist",
    "~/Library/Preferences/com.tencent.start.mac.Start.STGame.plist",
  ]
end
