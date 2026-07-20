cask "lazycat" do
  arch arm: "arm64", intel: "x64"

  version "2.0.14"
  sha256 arm:   "081357d95dc6fdc9c9c2a45d85894931fde27199e8da0bfed279eb98a983ba45",
         intel: "e23d04df2ea2056e35ca386fa174a78620254f7813438f6d05534b5b17b18a64"

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
