cask "manico" do
  version "2.8.1,393"
  sha256 "e83213c293baff826ca7624b3a130bf99ad5b05650364ba258266bc28645708c"

  url "https://manico.im/api/release_manager/downloads/im.manico.Manico/#{version.after_comma}.zip"
  appcast "https://manico.im/api/release_manager/im.manico.Manico.xml"
  name "Manico"
  desc "App Launcher & Switcher"
  homepage "https://manico.im/"

  depends_on macos: ">= :sierra"

  app "Manico.app"

  zap trash: [
    "~/Library/Containers/im.manico.Manico",
  ]
end
