cask "shadow-bot" do
  arch arm: "-arm64"
  livecheck_query = on_arch_conditional arm: "arm64", intel: "intel"

  version "1.7.1"
  sha256 arm:   "637956c46eefa567759ff394f6e53ab758f16b305808731bbe8f60664f44a790",
         intel: "7a153a24ba115b644e30b4a5c0f2dcf64a17d19050ee26413247b9c63b447718"

  url "https://winrobot-pub-a-cos.winrobot360.com/client/install/ShadowBot-#{version}#{arch}.dmg",
      verified: "winrobot-pub-a-cos.winrobot360.com/"
  name "Shadow Bot"
  name "影刀"
  desc "Application for robotic process automation"
  homepage "https://www.yingdao.com/"

  livecheck do
    url "https://api.yingdao.com/api/v1/sys/download/client?os=mac&arch=#{livecheck_query}"
    regex(/ShadowBot[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
    strategy :json do |json, regex|
      match = json["data"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: ">= :high_sierra"

  app "影刀.app"

  zap trash: [
    "~/Library/Application Support/影刀",
    "~/Library/Preferences/com.yingdao.yd.plist",
    "~/Library/Saved Application State/com.yingdao.yd.savedState",
  ]
end
