cask "shadow-bot" do
  arch arm: "-arm64"
  livecheck_query = on_arch_conditional arm: "arm64", intel: "intel"

  version "1.6.6"
  sha256 arm:   "da9d76761e28dae6ad51c6443e55b8cdcdd061f7b8ae1b1fd9a2fffc93778efa",
         intel: "60b493eb60fb341fad1e6bf0696581452396994ae3144200a651d38a5e900a85"

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
