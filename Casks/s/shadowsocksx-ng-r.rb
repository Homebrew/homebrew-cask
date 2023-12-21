cask "shadowsocksx-ng-r" do
  version "1.4.4-r8-resigning"
  sha256 "9353980f35f78a9d16951f28d036f5647a2f5a5c1a79f6480cc4b2852bc77e57"

  url "https://github.com/qinyuhang/ShadowsocksX-NG-R/releases/download/#{version}/ShadowsocksX-NG-R8.dmg"
  name "ShadowsocksX-NG-R"
  desc "Next Generation of ShadowsocksX"
  homepage "https://github.com/qinyuhang/ShadowsocksX-NG-R/"

  conflicts_with cask: "shadowsocksx"
  depends_on macos: ">= :el_capitan"

  app "ShadowsocksX-NG-R8.app"

  postflight do
    system_command "#{appdir}/ShadowsocksX-NG-R8.app/Contents/Resources/install_helper.sh"
  end

  uninstall launchctl: [
              "com.qiuyuzhou.shadowsocksX-NG.http",
              "com.qiuyuzhou.shadowsocksX-NG.kcptun",
              "com.qiuyuzhou.shadowsocksX-NG.local",
              "com.qiuyuzhou.ShadowsocksX-NG.LaunchHelper",
            ],
            quit:      "com.qiuyuzhou.ShadowsocksX-NG",
            script:    {
              executable: "/Library/Application Support/ShadowsocksX-NG/proxy_conf_helper",
              args:       ["--mode", "off"],
            },
            delete:    "/Library/Application Support/ShadowsocksX-NG"

  zap trash: [
    "~/.ShadowsocksX-NG",
    "~/Library/Application Support/ShadowsocksX-NG",
    "~/Library/Caches/com.qiuyuzhou.ShadowsocksX-NG",
    "~/Library/Preferences/com.qiuyuzhou.ShadowsocksX-NG.plist",
  ]
end
