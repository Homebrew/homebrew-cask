cask "lazycat" do
  arch arm: "arm64", intel: "x64"

  version "2.0.30"
  sha256 arm:   "ad3d3517498e1240c2721d3b03da58ceb058523655e076455775d810c472e5a3",
         intel: "7ef2e7fa08c73178af39a6013939cfbd3c5d052e2bd79a5a10a1208a43dc98e9"

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
