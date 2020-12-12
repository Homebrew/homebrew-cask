cask "netiquette" do
  version "1.1.1"
  sha256 "974d1842a9cadd39ae6883f132625c95ab3132fb86ffb141c7146a738a3f83f3"

  # bitbucket.org/objective-see/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/Netiquette_#{version}.zip"
  appcast "https://objective-see.com/products/changelogs/Netiquette.txt"
  name "Netiquette"
  homepage "https://objective-see.com/products/netiquette.html"

  depends_on macos: ">= :mojave"

  app "Netiquette.app"

  zap trash: [
    "~/Library/Caches/com.objective-see.Netiquette",
    "~/Library/Preferences/com.objective-see.Netiquette.plist",
  ]
end
