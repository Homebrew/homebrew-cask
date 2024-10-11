cask "bentobox" do
  version "0.7.7"
  sha256 "66ae1495f7108f2b531763976d7b20c6d5599f20fe93ba2a73fc43e8c1d6961f"

  url "https://releases.bentobox.friendlyventures.org/#{version}/bentobox-macos-universal.zip",
      verified: "releases.bentobox.friendlyventures.org/"
  name "BentoBox"
  desc "Window manager that organizes desktop applications into predefined zones"
  homepage "https://bentoboxapp.com/"

  livecheck do
    url "https://releases.bentobox.friendlyventures.org/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :ventura"

  app "BentoBox.app"

  zap trash: [
    "~/Library/Preferences/org.friendlyventures.BentoBox.plist",
    "~/Library/Saved Application State/org.friendlyventures.BentoBox.savedState",
  ]
end
