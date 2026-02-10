cask "lazycat" do
  arch arm: "arm64", intel: "x64"

  version "1.6.7"
  sha256 arm:   "c86c7fed7e1dc5ee9d5f45d6b981f2426d4a2398499f4e529cd5cb3f2976c3f3",
         intel: "6c7e5373950c04b8c9a4a78f75a7ce44468b6fb3a220e1b8b56b12170438286a"

  url "https://dl.lazycat.cloud/client/desktop/stable/lzc-client-desktop_v#{version}_#{arch}.dmg"
  name "LazyCat"
  desc "Client for LazyCat hardware"
  homepage "https://lazycat.cloud/"

  livecheck do
    url "https://dl.lazycat.cloud/client/desktop/lzc-client-desktop_#{arch}.dmg.metadata.json"
    strategy :json do |json|
      json["buildVersion"]&.delete_prefix("v")
    end
  end

  depends_on macos: ">= :big_sur"

  app "懒猫微服.app"

  zap trash: [
    "~/lazycat",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/cloud.lazycat.client.sfl*",
    "~/Library/Preferences/cloud.lazycat.client.plist",
    "~/Library/Saved Application State/cloud.lazycat.client.savedState",
  ]
end
