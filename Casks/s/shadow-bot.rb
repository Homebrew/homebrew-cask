cask "shadow-bot" do
  arch arm: "-arm64"
  livecheck_query = on_arch_conditional arm: "arm64", intel: "intel"

  version "1.9.2"
  sha256 arm:   "f998696ab690caf59d4c0dc331e92cbe9a3b209421bdb91a3e43ad1d862ef884",
         intel: "e4d79ffd13a38b6c6060c19bebaa5a2ecdbc776afcc22d2f7fb0b8aa7f5943e9"

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
