cask "shadowsocksx-ng" do
  version "1.10.1"
  sha256 "e99e8389e0fa9493fcca5f446f43d60bf82d4f2c94daac61f5a4c8a749112dae"

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
