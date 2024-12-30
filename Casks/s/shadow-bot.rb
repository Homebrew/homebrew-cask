cask "shadow-bot" do
  arch arm: "-arm64"

  version "1.9.7"
  sha256 arm:   "1f376878a3c16f080f42f77edee8b9c6a3cb5f52ca4aafdc0797537b339186ab",
         intel: "f24359d0fe7abd6a00c883fbd3eb11dece09b95d7ad50525301a42f90b15c18f"

  url "https://winrobot-pub-a-cos.yingdao.com/client/install/ShadowBot-#{version}#{arch}.dmg"
  name "Shadow Bot"
  name "影刀"
  desc "Application for robotic process automation"
  homepage "https://www.yingdao.com/"

  disable! date: "2024-12-30", because: "download artifact behind signed url"

  depends_on macos: ">= :high_sierra"

  app "影刀.app"

  zap trash: [
    "~/Library/Application Support/影刀",
    "~/Library/Preferences/com.yingdao.yd.plist",
    "~/Library/Saved Application State/com.yingdao.yd.savedState",
  ]
end
