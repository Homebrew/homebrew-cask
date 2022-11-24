cask "postbox" do
  version "7.0.59"
  sha256 "053e7cd2401931100d079f6472810c3be082f7daa14e774f123b18c4ada27cea"

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
