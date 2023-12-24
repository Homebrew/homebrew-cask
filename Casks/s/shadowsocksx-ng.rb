cask "shadowsocksx-ng" do
  version "1.10.2"
  sha256 "e4d0388d40c86db70c8bb8c0950207845a4e33217010b811aac1d1562762502e"

  url "https://github.com/shadowsocks/ShadowsocksX-NG/releases/download/v#{version}/ShadowsocksX-NG.dmg"
  name "ShadowsocksX-NG"
  desc "Tunneling proxy"
  homepage "https://github.com/shadowsocks/ShadowsocksX-NG/"

  conflicts_with cask: "shadowsocksx"
  depends_on macos: ">= :sierra"

  app "ShadowsocksX-NG.app"

  uninstall launchctl: [
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
            },
            delete:    "/Library/Application Support/ShadowsocksX-NG"

  zap trash: [
    "~/.ShadowsocksX-NG",
    "~/Library/Application Support/ShadowsocksX-NG",
    "~/Library/Caches/com.qiuyuzhou.ShadowsocksX-NG",
    "~/Library/Preferences/com.qiuyuzhou.ShadowsocksX-NG.plist",
  ]
end
