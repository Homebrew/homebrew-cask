cask "caffeine" do
  version "1.1.3"
  sha256 "240e5ab832a25ed0af43aeffd1d66dc663dfea7c2525d918c214d6107981a03b"

  # github.com/IntelliScape/caffeine/releases was verified as official when first introduced to the cask
  url "https://github.com/IntelliScape/caffeine/releases/download/#{version}/Caffeine.dmg"
  appcast "https://github.com/IntelliScape/caffeine/releases.atom"
  name "Caffeine"
  desc "Utility that prevents the system from going to sleep"
  homepage "https://intelliscapesolutions.com/apps/caffeine"

  app "Caffeine.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lightheadsw.caffeine.sfl*",
    "~/Library/Preferences/com.lightheadsw.Caffeine.plist",
  ]
end
