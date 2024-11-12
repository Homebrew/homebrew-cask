cask "shimonote" do
  arch arm: "arm64", intel: "x64"

  version "3.1.1,6d78b4a"
  sha256 arm:   "ec741ed9d38b2df97925c4ea001c4d71a00dc5a5fd58b60cc1fd256fc36fa6d8",
         intel: "13686d576d2fffc6438a803949f8f954613ef5723f0d198308b99b8ac4bdf9ac"

  url "https://as.smvm.cn/panther/shimo/release/darwin/#{arch}/%e7%9f%b3%e5%a2%a8%e6%96%87%e6%a1%a3_v#{version.csv.first}-release.#{version.csv.second}.shimo_darwin-#{arch}.zip",
      verified: "as.smvm.cn/panther/shimo/release/darwin/"
  name "Shimonote"
  desc "Document editor"
  homepage "https://shimo.im/"

  livecheck do
    url "https://as.smvm.cn/panther/shimo/release/darwin/#{arch}/shimo-mac.yml"
    regex(/石墨文档[._-]v?(\d+(?:\.\d+)+)-release\.(\h+).shimo_darwin-#{arch}\.zip/i)
    strategy :electron_builder do |item, regex|
      match = item["path"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "石墨文档.app"

  zap trash: [
    "~/Library/Application Support/com.shimo.desktop.main",
    "~/Library/Preferences/com.shimo.desktop.main.plist",
    "~/Library/Saved Application State/com.shimo.desktop.main.savedState",
  ]
end
