cask "shimonote" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.5.9,92910e9"

  if Hardware::CPU.intel?
    sha256 "f367a7944af30d68e79652cf615b4a0f1d354c87fb9851518bea19bec0c88072"
  else
    sha256 "32b6f98e5bc205df0937bb55be87c0fd0d2a879c02d0b642a795d2fe6725dc7d"
  end

  url "https://as.smvm.cn/panther/shimo/release/darwin/#{arch}/\%e7\%9f\%b3\%e5\%a2\%a8\%e6\%96\%87\%e6\%a1\%a3_v#{version.csv.first}-release.#{version.csv.second}_darwin-#{arch}.zip",
      verified: "as.smvm.cn/panther/shimo/release/darwin/"
  name "Shimonote"
  desc "Document editor"
  homepage "https://shimo.im/"

  livecheck do
    url "https://as.smvm.cn/panther/shimo/release/darwin/#{arch}/shimo-mac.yml"
    regex(/石墨文档[._-]v?(\d+(?:\.\d+)+)-release\.(\h+)_darwin-#{arch}\.zip/i)
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
