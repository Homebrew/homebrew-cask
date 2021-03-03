cask "dockmate" do
  version "0.8.3,2731"
  sha256 "6afa32d9a3451b8584925405aba12b75c0bd2081ef40e882bbdcde696d76d690"

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
