cask "coherence-x" do
  version "4.5.1"
  sha256 "23575f7dbf5909dda100207b21d6383f93c516a039c4fae2d99ede1b440cb336"

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
