cask "postbox" do
  version "7.0.36"
  sha256 "e562f6ee6c92d72eb7186bc6cf93c82a3c3e8546e2e37a9caab2d2d52bd70fa3"

  # d3nx85trn0lqsg.cloudfront.net/mac/ was verified as official when first introduced to the cask
  url "https://d3nx85trn0lqsg.cloudfront.net/mac/postbox-#{version}-mac64.dmg"
  appcast "https://www.postbox-inc.com/download/success-mac"
  name "Postbox"
  desc "Email client focusing on privacy protection"
  homepage "https://www.postbox-inc.com/"

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
