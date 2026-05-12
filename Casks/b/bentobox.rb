cask "bentobox" do
  version "1.1.7"
  sha256 "4130e06ed803506ebdfdc2966ea4df60c761ce36609998adef273b5e3202c852"

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
  depends_on macos: :sonoma

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
