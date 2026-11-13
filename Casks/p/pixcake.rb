cask "pixcake" do
  arch arm: "_arm64"

  version "10.1.0-343"
  sha256 arm:   "d621f72dfc2a3c703cc7dee7bf70fb9c5286dd429aca0a04419e3e6c39ddd4a4",
         intel: "b21f58490d36bfb976e2ba9dbeab943351330aedf4efaed90cb0a531cf5ffb54"

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
