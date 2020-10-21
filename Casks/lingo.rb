cask "lingo" do
  version "11.0,3081"
  sha256 "a652c58e31476bc78b3149725102c29533516c5a6da139226d3dd93ec2ab9e18"

  # rink.hockeyapp.net/api/2/apps/ was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/7d71478daf6447bda4094e216e97b0cf/app_versions/#{version.after_comma}?format=zip"
  appcast "https://www.lingoapp.com/mac/appcast"
  name "Lingo"
  desc "Visually organize all assets in one place"
  homepage "https://www.lingoapp.com/"

  app "Lingo.app"

  zap trash: [
    "~/Library/Preferences/com.lingoapp.Lingo.plist",
    "~/Library/Application Support/com.lingoapp.Lingo",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lingoapp.lingo.sfl*",
  ]
end
