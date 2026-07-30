cask "lazycat" do
  arch arm: "arm64", intel: "x64"

  version "2.0.21"
  sha256 arm:   "709228c9a377d8e2ab4ad41c62eebe2787c38a0f4a982cc030c736607b25da90",
         intel: "593d40cfac577272a903d38adb94b4ebab1efa34754e186c8a4647d118ac4027"

  url "https://dl.lazycatmicroserver.com/client/desktop/stable/lzc-client-desktop_v#{version}_#{arch}.dmg",
      verified: "dl.lazycatmicroserver.com/client/desktop/stable/"
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
