cask "start" do
  url_arch = Hardware::CPU.intel? ? "" : "m1/"
  livecheck_arch = Hardware::CPU.intel? ? "" : "-arm"

  if Hardware::CPU.intel?
    version "0.298.2-127"
    sha256 "51e92e5f335a6fb84de3c85e4be2bd88b8abfece394f1555bfa60362ab264166"
  else
    version "0.298.3-18"
    sha256 "c2685c39546af1ea2f9030ada68d44786ca3382341573b20fda2e618de1f8f96"
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
