cask "shadow-bot" do
  arch arm: "-arm64"
  livecheck_query = on_arch_conditional arm: "arm64", intel: "intel"

  version "1.6.5"
  sha256 arm:   "c24f8d15025726ea66d717cf52797eb04698745bc30dea7d00906f557a06816a",
         intel: "5b0bd31cea9afc227cd9b1c2b2a422b2a20a9be903fe3050ac2c56ed59d6c62e"

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
