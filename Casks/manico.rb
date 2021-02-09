cask "manico" do
  version "2.9.1,407"
  sha256 "1a930be0e16cc9965be7ff7bf5886967066c2d63e714f3b09b35997d84b18ab4"

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
