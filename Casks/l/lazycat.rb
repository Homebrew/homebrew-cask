cask "lazycat" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "8eaf3ed6108e292106596da6bc407a27aa00dc4f1b59477d9b137ee58d24ebef",
         intel: "738ff9007b5a25d6978d1d3289642450793f290c8e7955269020adf8a2aa75f6"

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

  depends_on macos: ">= :catalina"

  app "懒猫微服.app"

  zap trash: [
    "~/lazycat",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/cloud.lazycat.client.sfl*",
    "~/Library/Preferences/cloud.lazycat.client.plist",
    "~/Library/Saved Application State/cloud.lazycat.client.savedState",
  ]
end
