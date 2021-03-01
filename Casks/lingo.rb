cask "lingo" do
  version "11.2,3106"
  sha256 "cc59a69fdd888cb5fcad33bad9fab0a409ed67a9ecd9c7fa4187750937f5ab68"

  url "https://rink.hockeyapp.net/api/2/apps/7d71478daf6447bda4094e216e97b0cf/app_versions/#{version.after_comma}?format=zip",
      verified: "rink.hockeyapp.net/api/2/apps/"
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
