cask "manico" do
  version "3.13,537"
  sha256 "c5d7d75e6084d0afb127e68a332748c55a905ffdc569c47931f0876d7730c98f"

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
