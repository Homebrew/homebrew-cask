cask "lazycat" do
  arch arm: "arm64", intel: "x64"

  version "2.0.26"
  sha256 arm:   "17b0777838dcce53acd0b8eb8d55b7f893f20d4a7b7a7f6044e9a366cb01ddb7",
         intel: "3c3695cea3c27d91d5e39ba22da76700539bc59baf4e48df25d8910e3b911c78"

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
