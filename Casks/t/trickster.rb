cask "trickster" do
  version "4.0.1"
  sha256 "a01095f3d8e0ae95c2604454beaedb63d06c9683ec8a2431dcc2a6b42456fc0d"

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
