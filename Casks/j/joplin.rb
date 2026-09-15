cask "joplin" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.DMG", linux: ".AppImage"

  version "3.7.18"
  sha256 arm:          "103c9bc884108bc31593060008005411a45c1b2b530eeffca4d5ad262306c6e6",
         intel:        "73cd99d29fa0756078d70f799dbc440baabc0055c2a80874c88ba101e9af7d52",
         x86_64_linux: "c7ed7eeb6985621b75f0d09088cd01efc9af7aa2cfa17649ed4a83a75b29aca5"

  on_macos do
    depends_on macos: :monterey

    app "Joplin.app"

    zap trash: [
      "~/Library/Application Support/Joplin",
      "~/Library/Preferences/net.cozic.joplin-desktop.helper.plist",
      "~/Library/Preferences/net.cozic.joplin-desktop.plist",
      "~/Library/Saved Application State/net.cozic.joplin-desktop.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Joplin-#{version}.AppImage", target: "Joplin.AppImage"

    zap trash: [
      "~/.config/joplin-desktop",
      "~/.joplin",
    ]
  end

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{url_end}"
  name "Joplin"
  desc "Note taking and to-do application with synchronisation capabilities"
  homepage "https://joplinapp.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
