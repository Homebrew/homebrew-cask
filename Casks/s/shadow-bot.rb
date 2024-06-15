cask "shadow-bot" do
  arch arm: "-arm64"
  livecheck_query = on_arch_conditional arm: "arm64", intel: "intel"

  version "1.7.3"
  sha256 arm:   "15b22e485cbcdaa38b1cb294ee5c2359d1759e0fa9d050ec340532712bc95003",
         intel: "8bc996e5252cd7b77e5dd33fa047251894ce4beaf5dcf20bc7a093ef23e7bf07"

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
