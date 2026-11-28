cask "bentobox" do
  version "1.1.13"
  sha256 "5b20a9de002709184a711b691eb7258c12d694486fa675655d4a24f7d32f3858"

  url "https://releases.bentobox.friendlyventures.org/#{version}/bentobox-macos-universal.zip"
  name "BentoBox"
  desc "Window manager that organizes desktop applications into predefined zones"
  homepage "https://bentoboxapp.com/"

  livecheck do
    url "https://releases.bentobox.friendlyventures.org/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "BentoBox.app"

  zap trash: [
    "~/Library/Application Support/org.friendlyventures.BentoBox",
    "~/Library/Caches/org.friendlyventures.BentoBox",
    "~/Library/HTTPStorages/org.friendlyventures.BentoBox",
    "~/Library/Preferences/ByHost/com.apple.controlcenter.bentoboxes.*.plist",
    "~/Library/Preferences/org.friendlyventures.BentoBox.plist",
    "~/Library/Saved Application State/org.friendlyventures.BentoBox.savedState",
    "~/Library/WebKit/org.friendlyventures.BentoBox",
  ]
end
