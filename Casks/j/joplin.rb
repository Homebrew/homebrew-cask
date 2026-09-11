cask "joplin" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.DMG", linux: ".AppImage"

  version "3.7.16"
  sha256 arm:          "6bd0ab0857f475baf44028fd5614e0dbe5e92a91963f8aa2316972db94271cd3",
         intel:        "fe2c4f87a4a801db1f79c01e4e242708438088b22338068f5929bc76dda63672",
         x86_64_linux: "0c187ce66c4cddd59960f4b1861c87973d598d697239073c042ba1e35f08b30b"

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
