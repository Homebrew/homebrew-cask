cask "shadowsocksx-ng" do
  version "1.9.4"
  sha256 "dc06a995b63f8e32be9b86c265fd2979a6d73d4742d0ff16e1b2bb8f538d77a3"

  url "https://github.com/shadowsocks/ShadowsocksX-NG/releases/download/v#{version}/ShadowsocksX-NG.#{version}.zip"
  appcast "https://github.com/shadowsocks/ShadowsocksX-NG/releases.atom"
  name "ShadowsocksX-NG"
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
