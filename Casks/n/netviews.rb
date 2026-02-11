cask "netviews" do
  version "2.3"
  sha256 "f6c2a0e0bdf434e73e11e4fe5d901304a28c3190ce29e99ba62561514e271fcf"

  url "https://www.netviews.app/installers/NetViews-#{version}.zip"
  name "NetViews"
  desc "Network and Wi-Fi diagnostic tool"
  homepage "https://www.netviews.app/"

  livecheck do
    url "https://www.netviews.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sequoia"

  app "NetViews.app"

  uninstall quit: "com.bmmup.PingStalker"

  zap trash: [
    "~/Library/Caches/com.bmmup.PingStalker",
    "~/Library/HTTPStorages/com.bmmup.PingStalker",
    "~/Library/Preferences/com.bmmup.PingStalker.plist",
  ]
end
