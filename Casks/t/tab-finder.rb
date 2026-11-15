cask "tab-finder" do
  version "2.1.20"
  sha256 :no_check

  url "https://macplus-software.com/downloads/Tab%20Finder.zip"
  name "Tab Finder"
  name "Tab Finder 2"
  desc "Searchable list of open browser tabs"
  homepage "https://noteifyapp.com/tab-finder/"

  livecheck do
    url "https://macplus-software.com/downloads/Tab%20Finder%202.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Tab Finder 2.app"

  zap trash: [
    "~/Library/Application Support/com.macplus-software.com.Tab-Finder-2-Direct",
    "~/Library/Application Support/Tab Finder 2",
    "~/Library/Caches/com.macplus-software.com.Tab-Finder-2-Direct",
    "~/Library/HTTPStorages/com.macplus-software.com.Tab-Finder-2-Direct",
    "~/Library/Preferences/com.macplus-software.com.Tab-Finder-2-Direct.plist",
    "~/Library/Saved Application State/com.macplus-software.com.Tab-Finder-2-Direct.savedState",
  ]
end
