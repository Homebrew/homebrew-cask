cask "iina-plus" do
  version "0.5.23,21111822"
  sha256 "2a12c8baf4747d15a97321814e768a89cd1ff9e431c09f63a4e4fb5c3a01ecc6"

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version.before_comma}(#{version.after_comma})/iina+.#{version.before_comma}.dmg"
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
