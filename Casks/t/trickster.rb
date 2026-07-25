cask "trickster" do
  version "3.9.11"
  sha256 "3d0026adac43bf8d40584ee6150cbe327b46c609508f07f2ecc2a19692495232"

  url "https://dl.apparentsoft.com/TricksterUpdates/Trickster_#{version}.zip"
  name "Trickster"
  desc "Quickly access recently changed or modified files with a keyboard shortcut"
  homepage "https://www.apparentsoft.com/trickster"

  livecheck do
    url "https://dl.apparentsoft.com/TricksterUpdates/appcast.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Trickster.app"

  zap trash: [
    "~/Library/Application Scripts/com.apparentsoft.trickster",
    "~/Library/Application Scripts/com.apparentsoft.TricksterLauncher",
    "~/Library/Containers/com.apparentsoft.trickster",
    "~/Library/Containers/com.apparentsoft.TricksterLauncher",
  ]
end
