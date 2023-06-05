cask "coherence-x" do
  version "4.4"
  sha256 "48fcc53877061ad607846c316e0f596825ae635b4f0af84f9bf64091c12f1f05"

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
