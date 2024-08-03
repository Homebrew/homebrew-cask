cask "emby" do
  version "2.2.27,24"
  sha256 :no_check

  url "https://github.com/MediaBrowser/Emby.Releases/raw/master/macos/Emby.app.zip",
      verified: "github.com/MediaBrowser/Emby.Releases/"
  name "Emby"
  desc "Client for emby media server"
  homepage "https://emby.media/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "Emby.app"

  zap trash: [
    "~/Library/Application Scripts/com.emby.mobile",
    "~/Library/Application Scripts/group.com.emby.mobile",
    "~/Library/Containers/com.emby.mobile",
    "~/Library/Group Containers/group.com.emby.mobile",
    "~/Library/Saved Application State/com.emby.mobile.savedState",
  ]
end
