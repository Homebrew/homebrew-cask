cask "dockmate" do
  version "0.7.1,1930"
  sha256 "c294c687aec1568d423bf4545aeb911aab513a97a98f455b6daefc505f824cb2"

  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/DockMate/DockMate.#{version.before_comma}.zip",
      verified: "raw.githubusercontent.com/w0lfschild/"
  name "Dock Mate"
  desc "Window previews and controls"
  homepage "https://www.macenhance.com/dockmate"

  livecheck do
    url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/DockMate/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "DockMate.app"

  zap trash: [
    "~/Library/Application Support/com.macenhance.dockmate",
    "~/Library/Application Support/DockMate",
    "~/Library/Caches/com.macenhance.dockmate",
    "~/Library/Preferences/com.macenhance.dockmate.plist",
  ]
end
