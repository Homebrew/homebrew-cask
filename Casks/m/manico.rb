cask "manico" do
  version "3.11,519"
  sha256 "b7b3a20f101d8ea8925e89cb6cc8530ee277e3205b2765eb68719c4ff90d26a9"

  url "https://manico.im/api/release_manager/downloads/im.manico.Manico/#{version.csv.second}.zip"
  name "Manico"
  desc "App launcher and switcher"
  homepage "https://manico.im/"

  livecheck do
    url "https://manico.im/api/release_manager/im.manico.Manico.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Manico.app"

  uninstall login_item: "Manico"

  zap trash: [
    "~/Library/Application Support/im.manico.Manico",
    "~/Library/Application Support/Manico",
    "~/Library/Caches/im.manico.Manico",
    "~/Library/Containers/im.manico.Manico",
    "~/Library/HTTPStorages/im.manico.Manico",
    "~/Library/Preferences/im.manico.Manico.plist",
    "~/Library/WebKit/im.manico.Manico",
  ]
end
