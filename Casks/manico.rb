cask "manico" do
  version "2.7.3,388"
  sha256 "2a8863cfc6af313e3c79875fc3bff7bbf20813f13c25101b45963a2a436b0d98"

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
