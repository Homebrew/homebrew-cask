cask "iina-plus" do
  version "0.5.25,21121217"
  sha256 "ab870d939856f93c8524a8e54c3ae33afa5bb5d696f95e6a6e7a9bdca7648ddc"

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
