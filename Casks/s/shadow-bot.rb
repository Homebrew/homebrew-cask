cask "shadow-bot" do
  arch arm: "-arm64"
  livecheck_query = on_arch_conditional arm: "arm64", intel: "intel"

  version "1.9.7"
  sha256 arm:   "1f376878a3c16f080f42f77edee8b9c6a3cb5f52ca4aafdc0797537b339186ab",
         intel: "f24359d0fe7abd6a00c883fbd3eb11dece09b95d7ad50525301a42f90b15c18f"

  url "https://winrobot-pub-a-cos.yingdao.com/client/install/ShadowBot-#{version}#{arch}.dmg"
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
