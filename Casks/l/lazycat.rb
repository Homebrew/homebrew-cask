cask "lazycat" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "db8c6254477d4ec2176d6aabc7d05d03d029e9490ea14794f723d30ad79e320d",
         intel: "098174a8d584f19d90e97da2c03369c37c37362d73c5b80a4cd8fc03d2af8e5b"

  url "https://dl.lazycatmicroserver.com/client/desktop/stable/lzc-client-desktop_v#{version}_#{arch}.dmg"
  name "LazyCat"
  desc "Client for LazyCat hardware"
  homepage "https://lazycat.cloud/"

  livecheck do
    url "https://dl.lazycatmicroserver.com/client/desktop/lzc-client-desktop_#{arch}.dmg.metadata.json"
    strategy :json do |json|
      json["buildVersion"]&.delete_prefix("v")
    end
  end

  depends_on macos: :monterey

  app "懒猫微服.app"

  zap trash: [
    "~/lazycat",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/cloud.lazycat.client.sfl*",
    "~/Library/Preferences/cloud.lazycat.client.plist",
    "~/Library/Saved Application State/cloud.lazycat.client.savedState",
  ]
end
