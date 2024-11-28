cask "nifty" do
  version "3.99.3"
  sha256 :no_check

  url "https://nifty-apps.s3.amazonaws.com/Nifty.dmg",
      verified: "nifty-apps.s3.amazonaws.com/"
  name "Nifty"
  desc "Client for the Nifty project management platform"
  homepage "https://niftypm.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "Nifty.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.creative360.niftypm.sfl*",
    "~/Library/Application Support/Nifty",
    "~/Library/Logs/Nifty",
    "~/Library/Preferences/com.creative360.niftypm.plist",
    "~/Library/Saved Application State/com.creative360.niftypm.savedState",
  ]
end
