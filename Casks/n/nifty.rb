cask "nifty" do
  version "3.91.5"
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

  app "Nifty.app"

  zap trash: [
    "~/Library/Application Support/Nifty",
    "~/Library/Logs/Nifty",
    "~/Library/Preferences/com.creative360.niftypm.plist",
  ]
end
