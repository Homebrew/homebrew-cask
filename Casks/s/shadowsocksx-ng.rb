cask "shadowsocksx-ng" do
  version "1.10.3"
  sha256 "a0bc48af636c796471b1156eae0b6ca7340fe51deffec384c409dac785f04c60"

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
              "com.qiuyuzhou.ShadowsocksX-NG.LaunchHelper",
              "com.qiuyuzhou.shadowsocksX-NG.local",
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
