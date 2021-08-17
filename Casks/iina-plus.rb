cask "iina-plus" do
  version "0.5.19,21080617"
  sha256 "6cf5b28cd68345c75944e2acf40238096cca9b7c8d3fc629f60f40350676195a"

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version.before_comma}(#{version.after_comma})/iina+.#{version.before_comma}.dmg"
  name "IINA+"
  desc "Extra danmaku support for iina (iina 弹幕支持)"
  homepage "https://github.com/xjbeta/iina-plus"

  livecheck do
    url "https://github.com/xjbeta/iina-plus/releases/latest"
    strategy :page_match do |page|
      match = page.match(/(\d+(?:\.\d+)*)\((\d+)\)/i)
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
