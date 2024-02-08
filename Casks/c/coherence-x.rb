cask "coherence-x" do
  version "4.6"
  sha256 "9c54ab4420946a88d7356cb8052b771a0eb4595162800a03eb6a78643c9dc1f5"

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
