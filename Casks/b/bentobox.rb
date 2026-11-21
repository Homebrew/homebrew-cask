cask "bentobox" do
  version "1.1.11"
  sha256 "883c2afc8cd4643c7f8b4f28edf835fb811a9b2fb9c121577bf95c99fd5658a6"

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
    "~/Library/Preferences/org.friendlyventures.BentoBox.plist",
    "~/Library/Saved Application State/org.friendlyventures.BentoBox.savedState",
    "~/Library/WebKit/org.friendlyventures.BentoBox",
  ]
end
