cask "shimonote" do
  arch arm: "arm64", intel: "x64"

  version "2.5.13,66be574"
  sha256 arm:   "20b460eb53653b0f391b3bc359c1e538127c4b9c8572dca8444063b2fb90cb17",
         intel: "6798b0441ec654b8f46a6818e8d77ed086257239e6bf11e802e8fe865e55a8a5"

  url "https://as.smvm.cn/panther/shimo/release/darwin/#{arch}/\%e7\%9f\%b3\%e5\%a2\%a8\%e6\%96\%87\%e6\%a1\%a3_v#{version.csv.first}-release.#{version.csv.second}.shimo_darwin-#{arch}.zip",
      verified: "as.smvm.cn/panther/shimo/release/darwin/"
  name "Shimonote"
  desc "Document editor"
  homepage "https://shimo.im/"

  livecheck do
    url "https://as.smvm.cn/panther/shimo/release/darwin/#{arch}/shimo-mac.yml"
    regex(/石墨文档[._-]v?(\d+(?:\.\d+)+)-release\.(\h+).shimo_darwin-#{arch}\.zip/i)
    strategy :electron_builder do |item|
      match = item["path"].match(regex)
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
