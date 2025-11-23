cask "baiduinput" do
  version "6.0.3.66,1000e"
  sha256 "4d31a7a0dbf09d32eaecc1f0b778f27128707fbc31139fabdb0090a325393974"

  url "https://imeres.baidu.com/mac/baiduinput_mac_v#{version.csv.first}_#{version.csv.second}.dmg"
  name "Baidu Input"
  name "安装百度输入法"
  homepage "https://srf.baidu.com/input/mac.html"

  livecheck do
    url "https://srf.baidu.com/?c=j&e=d&platform=mac"
    regex(/baiduinput[._-]mac[._-]v?(\d+(?:\.\d+)+)[._-](\w+)\.dmg/i)
    strategy :header_match do |headers, regex|
      headers["location"]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  installer manual: "安装百度输入法.app"

  uninstall pkgutil: "com.baidu.inputmethod.*",
            delete:  "/Library/Input Methods/BaiduIM.app"
end
