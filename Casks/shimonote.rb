cask "shimonote" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.5.8,3a8635b"

  if Hardware::CPU.intel?
    sha256 "df0d218917c2ab3f0c10edafbd18804e8cafc92f752601d7e93198f79a816f3b"
  else
    sha256 "14570abd17f9aa077502e8af9b2e15a980657241714e2b7c5c9e533844493f14"
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
