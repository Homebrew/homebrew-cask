cask "metarename" do
  version "1.0.10"
  sha256 "8622ba6fbd7ed1cdda6dbdae782816b0557b7a92b2ed112c923f7a6dccf8303b"

  url "https://neededapps.com/appcasts/metarename/versions/#{version}"
  name "MetaRename"
  desc "Bulk file renamer with meta tag support"
  homepage "https://neededapps.com/metarename/"

  livecheck do
    url "https://neededapps.com/appcasts/metarename/changelog.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "MetaRename.app"

  zap trash: [
    "~/Library/Application Support/com.jeremyvizzini.metarename-paddle",
    "~/Library/Application Support/MetaRename",
    "~/Library/Caches/com.jeremyvizzini.metarename*",
    "~/Library/Group Containers/*.group.com.jeremyvizzini.metarename",
    "~/Library/HTTPStorages/com.jeremyvizzini.metarename*",
    "~/Library/Preferences/com.jeremyvizzini.metarename*.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.metarename*.savedState",
  ]
end
