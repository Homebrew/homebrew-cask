cask "coherence-x" do
  version "4.5.3"
  sha256 "cc7fc7b68e6c0a41a1b7a26fdca7d8d3303e7910bec3f251c104055214ab41cf"

  url "https://bzgdownloads.s3.amazonaws.com/Coherence/Coherence+X+#{version}.zip",
      verified: "bzgdownloads.s3.amazonaws.com/Coherence/"
  name "Coherence X"
  desc "Turn websites into apps"
  homepage "https://bzgapps.com/coherence"

  livecheck do
    url "https://bzgdownloads.s3.amazonaws.com/Coherence/App+Cast/appcast#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Coherence X.app"

  zap trash: [
    "~/Library/Application Support/ccom.BZG.CoherenceX*",
    "~/Library/Application Support/Coherence X",
    "~/Library/Preferences/com.BZG.CoherenceX*",
  ]
end
