cask "coherence" do
  version "4.3"
  sha256 "7e0f6cab169afc54fe701e2a4301024d5c4cece90aeacd50bf954694af65d0fc"

  url "https://bzgdownloads.s3.amazonaws.com/Coherence/Coherence+X+#{version}.zip",
      verified: "bzgdownloads.s3.amazonaws.com/Coherence/"
  name "Coherence"
  desc "Turn websites into apps"
  homepage "https://bzgapps.com/coherence"

  livecheck do
    url "https://bzgdownloads.s3.amazonaws.com/Coherence/App+Cast/appcast#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates false
  depends_on macos: ">= :high_sierra"

  app "Coherence X.app"

  zap trash: [
    "~/Library/Application Support/Coherence X",
    "~/Library/Application Support/ccom.BZG.CoherenceX4",
    "~/Library/Preferences/com.BZG.CoherenceX4.*",
  ]
end
