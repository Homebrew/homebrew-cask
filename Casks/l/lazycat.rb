cask "lazycat" do
  arch arm: "arm64", intel: "x64"

  version "2.0.12"
  sha256 arm:   "76a29ac6b598aa902b8e6bc2ed4df3d2b3dd7fbc5828659440ca639eb3ca4512",
         intel: "54780a996ae07b4166ec3b9de2f15410cf7d6c099e95c601015ab5f9740464cb"

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

  depends_on macos: :monterey

  app "懒猫微服.app"

  zap trash: [
    "~/lazycat",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/cloud.lazycat.client.sfl*",
    "~/Library/Preferences/cloud.lazycat.client.plist",
    "~/Library/Saved Application State/cloud.lazycat.client.savedState",
  ]
end
