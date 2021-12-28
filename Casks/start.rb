cask "start" do
  url_arch = Hardware::CPU.intel? ? "" : "m1/"
  livecheck_arch = Hardware::CPU.intel? ? "" : "-arm"

  if Hardware::CPU.intel?
    version "0.299.2-141"
    sha256 "3cd734f275546c45860bec7c9af4a5415ff4bd1ccdf346bacf60e295e053a733"
  else
    version "0.299.4-29"
    sha256 "9946acf0836c35aa16bfc8397241924a389c1afc0e325ee99e5476ab9d571424"
  end

  url "https://imgcdn.start.qq.com/cdn/mac.client/installer/#{url_arch}START-Installer-#{version}.dmg"
  name "START"
  name "腾讯云游戏"
  desc "Tencent cloud gaming platform"
  homepage "https://start.qq.com/"

  livecheck do
    url "https://api.start.qq.com/cfg/get?biztypes=macos-update-info#{livecheck_arch}"
    regex(%r{.*/START-Installer-([.\d\-]+)\.dmg}i)
  end

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
