cask "shimonote" do
  arch arm: "arm64", intel: "x64"

  version "3.0.0,3fb3ddc0"
  sha256 arm:   "7b74ece090b0344b52935d920c9276fc8f58078f8992cf4041c4aaf838c0c3b3",
         intel: "54349b88722dce605cc8e6f254dc4b97822d8d21dce05b27458ea427a30ba769"

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
