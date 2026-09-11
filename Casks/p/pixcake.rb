cask "pixcake" do
  arch arm: "_arm64"

  version "9.9.5-38"
  sha256 arm:   "59c6324d695fdcb6ee50b32ac52b4b4c16547b91484e0b5c14dcbb3973d57e27",
         intel: "bf69bbf903ca52d66c4a87a7779fa06b072d5bc807c47aed2d07b1e75292be25"

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

  app "pixcake.app", target: "像素蛋糕.app"

  uninstall quit: "com.xiangtian.pixcakepc"

  zap trash: [
    "~/Library/Application Support/com.xiangtian.pixcakepc",
    "~/Library/Caches/com.xiangtian.pixcakepc",
    "~/Library/Preferences/com.xiangtian.pixcakepc.plist",
    "~/Library/Saved Application State/com.xiangtian.pixcakepc.savedState",
  ]
end
