cask "tab-finder" do
  version "2.1.20"
  sha256 :no_check

  url "https://macplus-software.com/downloads/Tab%20Finder.zip"
  name "Tab Finder"
  name "Tab Finder #{version.major}"
  desc "Searchable list of open browser tabs"
  homepage "https://noteifyapp.com/tab-finder/"

  livecheck do
    url "https://macplus-software.com/downloads/Tab%20Finder%20#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Tab Finder #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.macplus-software.com.Tab-Finder-#{version.major}-Direct",
    "~/Library/Application Support/Tab Finder #{version.major}",
    "~/Library/Caches/com.macplus-software.com.Tab-Finder-#{version.major}-Direct",
    "~/Library/HTTPStorages/com.macplus-software.com.Tab-Finder-#{version.major}-Direct",
    "~/Library/Preferences/com.macplus-software.com.Tab-Finder-#{version.major}-Direct.plist",
    "~/Library/Preferences/group.com.macplus-software.com.Tab-Finder-#{version.major}-Direct.firebase.plist",
    "~/Library/Saved Application State/com.macplus-software.com.Tab-Finder-#{version.major}-Direct.savedState",
  ]
end
