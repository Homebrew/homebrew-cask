cask "netviews" do
  version "2.8"
  sha256 "0527bc6d6b136215dca8ba84ef0e3904239a8a54bd34838dba4a476688d100c6"

  url "https://www.netviews.app/installers/NetViews-#{version}.zip"
  name "NetViews"
  desc "Network and Wi-Fi diagnostic tool"
  homepage "https://www.netviews.app/"

  livecheck do
    url "https://www.netviews.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "NetViews.app"

  uninstall launchctl: "com.bmmup.pingstalker.ChmodBPF",
            quit:      "com.bmmup.PingStalker",
            delete:    [
              "/Library/Application Support/PingStalker/ChmodBPF",
              "/Library/LaunchDaemons/com.bmmup.pingstalker.ChmodBPF.plist",
            ]

  zap trash: [
    "~/Library/Application Support/NetViews",
    "~/Library/Caches/com.bmmup.PingStalker",
    "~/Library/HTTPStorages/com.bmmup.PingStalker",
    "~/Library/Preferences/com.bmmup.PingStalker.plist",
  ]
end
