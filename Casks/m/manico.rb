cask "manico" do
  version "3.14,543"
  sha256 "5b8e3bc05c2e3e3fcf202af07f39daff8c135ba9055162af08b013a62479a36d"

  url "https://manico.im/api/release_manager/downloads/im.manico.Manico/#{version.csv.second}.zip"
  name "Manico"
  desc "App launcher and switcher"
  homepage "https://manico.im/"

  livecheck do
    url "https://manico.im/api/release_manager/im.manico.Manico.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

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
