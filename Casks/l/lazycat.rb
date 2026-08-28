cask "lazycat" do
  arch arm: "arm64", intel: "x64"

  version "2.0.25"
  sha256 arm:   "2b975b903b9137e91bade6e44d62713ad206f17057c97ff08899494a5b15ad73",
         intel: "b0d915f3cfad2cae9b72c0dea6e2c20e34a2c20cfbd9a9b041d9d624725dd6de"

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
