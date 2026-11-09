cask "pixcake" do
  arch arm: "_arm64"

  version "10.1.0-308"
  sha256 arm:   "195d67dc25d4ababa6c4e04cdacc565ea2337c1fc9c4b4525effa07e81a3a526",
         intel: "208ad4b22d15692636e041ee3ed9ba89d661a2235643fc69a69f093b2c48af23"

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
