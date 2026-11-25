cask "joplin" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.DMG", linux: ".AppImage"

  version "3.7.24"
  sha256 arm:          "d95c2376035c7630dfb94f6eecca2f6edb3a27531626553a344f2b2308a5830e",
         intel:        "62a567c1101d0dc9db64625987265026f36217ae163e851bfe7b687dca314d02",
         x86_64_linux: "64d544b8c865b53d975d1cc9438300465be860dfd9b6c7d4bb6f66a9f3777584"

  on_macos do
    depends_on macos: :monterey

    app "Joplin.app"

    zap trash: [
      "~/.config/joplin-desktop",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.cozic.joplin-desktop.sfl*",
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
