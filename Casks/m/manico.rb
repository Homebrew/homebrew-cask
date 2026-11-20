cask "manico" do
  version "3.15,546"
  sha256 "e35122944d95570f26fe573041e82341c06f3a59a60a59906b04fc8a9786fe88"

  url "https://manico.im/api/release_manager/downloads/im.manico.Manico/#{version.csv.second}.zip"
  name "Manico"
  desc "App launcher and switcher"
  homepage "https://manico.im/"

  livecheck do
    url "https://manico.im/api/release_manager/im.manico.Manico.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Manico.app"

  uninstall login_item: "Manico"

  zap trash: [
    "~/Library/Application Scripts/KAQ3M6FSM7.im.manico.Manico",
    "~/Library/Application Support/bugsnag-shared-im.manico.Manico",
    "~/Library/Application Support/im.manico.Manico",
    "~/Library/Application Support/Manico",
    "~/Library/Caches/bugsnag-shared-im.manico.Manico",
    "~/Library/Caches/im.manico.Manico",
    "~/Library/Containers/im.manico.Manico",
    "~/Library/Group Containers/KAQ3M6FSM7.im.manico.Manico",
    "~/Library/HTTPStorages/im.manico.Manico",
    "~/Library/Preferences/im.manico.Manico.plist",
    "~/Library/WebKit/im.manico.Manico",
  ]
end
