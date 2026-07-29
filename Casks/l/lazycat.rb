cask "lazycat" do
  arch arm: "arm64", intel: "x64"

  version "2.0.19"
  sha256 arm:   "573357a8beaaf0cbde2493ac1caa66be5c8d8573e0e199cc6e1d1ead87829f44",
         intel: "957f3d813fd724f035acd3c92decea69919b14d7b83c032902c18a7f14798672"

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
