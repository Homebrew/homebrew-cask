cask "neotiler" do
  version "2.4.1"
  sha256 "c3b7a77f5640ff943a01e95a5188c5a6fa40a9ce334a6b29105049650fd5446e"

  url "https://github.com/karacocukk/neotiler-mac-window-manager/releases/download/v#{version}/NeoTiler_v#{version}.dmg",
      verified: "github.com/karacocukk/neotiler-mac-window-manager/"
  name "NeoTiler"
  desc "Window manager with smart workspaces, custom snap areas, and gestures"
  homepage "https://getneotiler.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "NeoTiler.app"

  uninstall quit: "com.veysel.NeoTiler"

  zap trash: [
    "~/Library/Application Support/com.veysel.NeoTiler",
    "~/Library/Caches/com.veysel.NeoTiler",
    "~/Library/Preferences/com.veysel.NeoTiler.plist",
  ]
end
