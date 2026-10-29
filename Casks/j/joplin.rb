cask "joplin" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.DMG", linux: ".AppImage"

  version "3.7.22"
  sha256 arm:          "185395eba8d9dac2d8656884cbb0e5b96bcb40b41d80c67126ce5526cb5186c8",
         intel:        "5718f0e30ca4bacebb5f03822f2963433d1120e3581258772f2d9eba1d53633f",
         x86_64_linux: "2b0b1ee82999f00883d21d950c2fb5dff28ccc3d2f570248b3abd40e5100dfdc"

  on_macos do
    depends_on macos: :monterey

    app "Joplin.app"

    zap trash: [
      "~/.config/joplin-desktop",
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
end
