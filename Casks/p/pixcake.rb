cask "pixcake" do
  arch arm: "_arm64"

  version "10.1.0-271"
  sha256 arm:   "48f29ba30c5952a949162c8b532acaf2d17048a2764b1ef1287b52c23a8876a7",
         intel: "0de204696e7ea40ddcd70902774a1ae76861a9faadafa554f4bdd8bfcb76241b"

  url "https://download.pixcakeai.com/package/#{version}/%E5%83%8F%E7%B4%A0%E8%9B%8B%E7%B3%95-#{version}#{arch}.dmg"
  name "像素蛋糕"
  name "PixCake"
  desc "AI photo editing software for commercial photography"
  homepage "https://www.pixcakeai.com/"

  livecheck do
    url "https://api.pixcakeai.com/v1/web/software/info"
    strategy :json do |json|
      json["data"]&.filter_map do |item|
        next unless [15, 17].include?(item["app_type"])

        item["version"]
      end&.max
    end
  end

  depends_on :macos

  app "pixcake.app"

  uninstall quit: "com.xiangtian.pixcakepc"

  zap trash: [
    "~/Library/Application Support/com.xiangtian.pixcakepc",
    "~/Library/Application Support/PixCake-qt_pro",
    "~/Library/Caches/com.xiangtian.pixcakepc",
    "~/Library/Logs/DiagnosticReports/pixcake",
    "~/Library/Preferences/com.xiangtian.pixcakepc.plist",
    "~/Library/Saved Application State/com.xiangtian.pixcakepc.savedState",
  ]
end
