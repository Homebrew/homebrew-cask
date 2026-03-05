cask "netviews" do
  version "2.9"
  sha256 "d1566e757f62a9fdcf2f60eb8660cfa9cd8a91a92f79e2604d8af298e371da5e"

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
