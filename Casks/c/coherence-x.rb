cask "coherence-x" do
  version "4.5"
  sha256 "dd359e7bb3b01fe5075fc038d9116834d513d6347978e921b88a5015e8c8e123"

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
