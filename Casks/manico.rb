cask "manico" do
  version "2.9,405"
  sha256 "df892cf2cf2a883ff3e3ffd0058b552715f4cc9d58aa29f68e55ae2f92c4b241"

  url "https://manico.im/api/release_manager/downloads/im.manico.Manico/#{version.after_comma}.zip"
  name "Manico"
  desc "App Launcher & Switcher"
  homepage "https://manico.im/"

  livecheck do
    url "https://manico.im/api/release_manager/im.manico.Manico.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Manico.app"

  zap trash: [
    "~/Library/Containers/im.manico.Manico",
  ]
end
