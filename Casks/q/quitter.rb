cask "quitter" do
  version "1.0"
  sha256 :no_check

  url "https://marco.org/appcasts/Quitter.zip"
  name "Quitter"
  desc "Automatically hides or quits apps after periods of inactivity"
  homepage "https://marco.org/apps#quitter"

  livecheck do
    url "https://marco.org/appcasts/quitter.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Quitter.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.marcoarment.quitter.sfl*",
    "~/Library/Caches/com.marcoarment.quitter",
    "~/Library/Preferences/com.marcoarment.quitter.plist",
  ]
end
