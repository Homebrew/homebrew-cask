cask "trickster" do
  version "4.0"
  sha256 "847f26d19172c9c8550ab4624958f01b02bc7f6d8ae132b30fe66226ecee2a55"

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
