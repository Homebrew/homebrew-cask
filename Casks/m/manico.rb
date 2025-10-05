cask "manico" do
  version "3.10,512"
  sha256 "3b8de36fa74d62b89ef7954af761c94a3a1e94ae2ad4a14ceb99866efa9f03fd"

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
