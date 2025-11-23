cask "hazeover" do
  version "1.9.6"
  sha256 :no_check

  url "https://hazeover.com/HazeOver.dmg"
  name "HazeOver"
  desc "Windows manager and desktop organiser"
  homepage "https://hazeover.com/"

  # Upstream has published unstable versions in the main channel (e.g. "1.9.6
  # Beta", using a `HazeOverNext.dmg` file), so this matches the first item
  # where the `shortVersionString` only contains a typical numeric version.
  livecheck do
    url "https://hazeover.com/updates.xml"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :sparkle do |items, regex|
      items.find { |item| item.short_version&.match(regex) }&.short_version
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "HazeOver.app"

  uninstall launchctl:  "com.pointum.hazeover.launcher",
            quit:       "com.pointum.hazeover",
            login_item: "HazeOver"

  zap trash: [
    "~/Library/Caches/com.pointum.hazeover",
    "~/Library/HTTPStorages/com.pointum.hazeover",
    "~/Library/Preferences/com.pointum.hazeover.plist",
  ]
end
