cask "lazycat" do
  arch arm: "arm64", intel: "x64"

  version "2.0.23"
  sha256 arm:   "4398e734a6324314b57a68daac463bbd67eab1bb63c035a8f991b12c10a8d35e",
         intel: "cc77c594999dde65eb733824146d78ee1514f77bdfe82311c0e6ec6cab886613"

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
