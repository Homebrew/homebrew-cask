cask "iina-plus" do
  version "0.6.6,22042822"
  sha256 "584d29420fe82cdf3980bc7df4b54a052f6fbef4a31f64d0e837a85a985af1af"

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version.csv.first}(#{version.csv.second})/iina+.#{version.csv.first}.dmg"
  name "IINA+"
  desc "Extra danmaku support for iina (iina 弹幕支持)"
  homepage "https://github.com/xjbeta/iina-plus"

  livecheck do
    url "https://github.com/xjbeta/iina-plus/releases/latest"
    strategy :page_match do |page|
      match = page.match(/(\d+(?:\.\d+)+)\((\d+)\)/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "iina+.app"

  zap trash: [
    "~/Library/Application Support/com.xjbeta.iina-plus",
    "~/Library/Caches/com.xjbeta.iina-plus",
    "~/Library/Preferences/com.xjbeta.iina-plus.plist",
    "~/Library/WebKit/com.xjbeta.iina-plus",
  ]
end
