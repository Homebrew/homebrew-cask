cask "coherence-x" do
  version "4.8"
  sha256 "a81093b088046713c7faf643543d4bfe5664dd82d1ea7c4ccd85bace7be8eab6"

  url "https://bzgdownloads.s3.amazonaws.com/Coherence/Coherence+X+#{version}.zip",
      verified: "bzgdownloads.s3.amazonaws.com/Coherence/"
  name "Coherence X"
  desc "Turn websites into apps"
  homepage "https://bzgapps.com/coherence"

  livecheck do
    url "https://bzgdownloads.s3.amazonaws.com/Coherence/App+Cast/appcast#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Coherence X.app"

  zap trash: [
    "~/Library/Application Support/Coherence X",
    "~/Library/Application Support/com.BZG.CoherenceX#{version.major}",
    "~/Library/Caches/com.BZG.CoherenceX#{version.major}",
    "~/Library/HTTPStorages/com.BZG.CoherenceX#{version.major}",
    "~/Library/HTTPStorages/com.BZG.CoherenceX#{version.major}.binarycookies",
    "~/Library/Preferences/com.BZG.CoherenceX#{version.major}.plist",
    "~/Library/Saved Application State/com.BZG.CoherenceX#{version.major}.savedState",
    "~/Library/WebKit/com.BZG.CoherenceX#{version.major}",
  ]
end
