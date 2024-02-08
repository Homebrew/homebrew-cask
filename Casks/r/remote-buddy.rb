cask "remote-buddy" do
  version "2.5.1"
  sha256 :no_check

  url "https://www.iospirit.com/products/remotebuddy/download/RemoteBuddy.zip"
  name "Remote Buddy"
  desc "Control apps and web videos from your phone"
  homepage "https://www.iospirit.com/products/remotebuddy/"

  livecheck do
    url "https://www.iospirit.com/products/remotebuddy/releasenotes/"
    regex(/Changes\s+in\s+version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Remote Buddy.app"

  zap trash: [
    "~/Library/Application Support/Remote Buddy",
    "~/Library/Caches/com.apple.helpd/Generated/com.iospirit.RemoteBuddy.help*",
    "~/Library/Preferences/ByHost/com.iospirit.RemoteBuddy.*",
    "~/Library/Preferences/com.iospirit.RemoteBuddy.plist",
    "~/Library/Saved Application State/com.iospirit.RemoteBuddy.savedState",
  ]
end
