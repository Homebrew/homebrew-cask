cask "bentobox" do
  version "0.8.4"
  sha256 "96764b5b7e40f8a790da911fb6eca2ec04a61a019495cb3c250e542a71a7a7de"

  url "https://releases.bentobox.friendlyventures.org/#{version}/bentobox-macos-universal.zip",
      verified: "releases.bentobox.friendlyventures.org/"
  name "BentoBox"
  desc "Window manager that organizes desktop applications into predefined zones"
  homepage "https://bentoboxapp.com/"

  livecheck do
    url "https://releases.bentobox.friendlyventures.org/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

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
