cask "shadowsocksx-ng" do
  version "1.10.0"
  sha256 "1443c94dc0f69c97538015a3c180289aa6ef672c61cc3d41e9159dbb3a6737a5"

  url "https://github.com/shadowsocks/ShadowsocksX-NG/releases/download/v#{version}/ShadowsocksX-NG.dmg"
  name "ShadowsocksX-NG"
  desc "Tunneling proxy"
  homepage "https://github.com/shadowsocks/ShadowsocksX-NG/"

  conflicts_with cask: "shadowsocksx"
  depends_on macos: ">= :sierra"

  app "ShadowsocksX-NG.app"

  uninstall delete:    "/Library/Application Support/ShadowsocksX-NG",
            launchctl: [
              "com.qiuyuzhou.shadowsocksX-NG.http",
              "com.qiuyuzhou.shadowsocksX-NG.kcptun",
              "com.qiuyuzhou.shadowsocksX-NG.local",
              "com.qiuyuzhou.ShadowsocksX-NG.LaunchHelper",
            ],
            quit:      "com.qiuyuzhou.ShadowsocksX-NG",
            script:    {
              executable: "#{appdir}/ShadowsocksX-NG.app/Contents/Resources/proxy_conf_helper",
              args:       ["--mode", "off"],
              sudo:       true,
            }

  zap trash: [
    "~/.ShadowsocksX-NG",
    "~/Library/Application Support/ShadowsocksX-NG",
    "~/Library/Caches/com.qiuyuzhou.ShadowsocksX-NG",
    "~/Library/Preferences/com.qiuyuzhou.ShadowsocksX-NG.plist",
  ]
end
