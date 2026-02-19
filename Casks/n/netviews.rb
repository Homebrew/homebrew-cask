cask "netviews" do
  version "2.5"
  sha256 "8fd39b008ebe76fc7b371316e4d617cf2ff5d771ddf74a5f68cdb4eb4a13b2e6"

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
