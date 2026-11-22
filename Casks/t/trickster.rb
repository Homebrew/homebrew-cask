cask "trickster" do
  version "4.1"
  sha256 "cdd14ef86b1cfcb56453849698bf7225b781ef2260c7c502ef208b193b54daf2"

  url "https://dl.apparentsoft.com/TricksterUpdates/Trickster_#{version}.zip"
  name "Trickster"
  desc "Quickly access recently changed or modified files with a keyboard shortcut"
  homepage "https://www.apparentsoft.com/trickster"

  livecheck do
    url "https://dl.apparentsoft.com/TricksterUpdates/appcast.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Trickster.app"

  uninstall quit: "com.apparentsoft.trickster"

  zap trash: [
    "~/Library/Application Scripts/com.apparentsoft.trickster",
    "~/Library/Application Scripts/com.apparentsoft.TricksterLauncher",
    "~/Library/Containers/com.apparentsoft.trickster",
    "~/Library/Containers/com.apparentsoft.TricksterLauncher",
  ]
end
