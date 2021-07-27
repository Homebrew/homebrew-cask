cask "audacity" do
  version "3.0.3"
  sha256 "e235f776783bedd9d622f4b7459135bab8496448be6fa77d56fa95b299a24ceb"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macos-#{version}-Intel.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
