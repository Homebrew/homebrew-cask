cask "lazycat" do
  arch arm: "arm64", intel: "x64"

  version "1.3.7"
  sha256 arm:   "f0d55717a47e2a03a3c2d16556d8aaeec24d544096bcd4462aadb9188aedece7",
         intel: "ffc37fa7488892ec85bd52414c7d6c4a9b1e559c0949a167cc825a7e18a6cb91"

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
