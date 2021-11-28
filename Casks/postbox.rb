cask "postbox" do
  version "7.0.52"
  sha256 "c59789bfb6273a04e61365c402e2bd1e2fff96fdb4f8494358cff65ce90b7abb"

  url "https://d3nx85trn0lqsg.cloudfront.net/mac/postbox-#{version}-mac64.dmg",
      verified: "d3nx85trn0lqsg.cloudfront.net/mac/"
  name "Postbox"
  desc "Email client focusing on privacy protection"
  homepage "https://www.postbox-inc.com/"

  livecheck do
    url "https://www.postbox-inc.com/download/success-mac"
    regex(%r{href=.*?/postbox[._-]v?(\d+(?:\.\d+)+)[._-]mac64\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Postbox.app"

  zap trash: [
    "~/Library/Application Support/Postbox",
    "~/Library/Application Support/PostboxApp",
    "~/Library/Caches/com.crashlytics.data/com.postbox-inc.postbox",
    "~/Library/Caches/com.postbox-inc.postbox",
    "~/Library/Caches/Postbox",
    "~/Library/Caches/PostboxApp",
    "~/Library/PDF Services/Mail PDF with Postbox",
    "~/Library/Preferences/com.postbox-inc.postbox.plist",
    "~/Library/Saved Application State/com.postbox-inc.postbox.savedState",
  ]
end
