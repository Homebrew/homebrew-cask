cask "dockmate" do
  version "0.8.2,2730"
  sha256 "d60021b94d70384c8f16af646ab02ef4e3b3e8ae411b1914c1d2a0a5b57f28d0"

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
