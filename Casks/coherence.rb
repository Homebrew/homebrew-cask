cask "coherence" do
  version "4.1"
  sha256 "e809c115d7ebc3da9c57162934a271984f9dbb3e4dd77d3ee6e30c5219a1d469"

  url "https://bzgdownloads.s3.amazonaws.com/Coherence/Coherence+X+#{version}.zip",
      verified: "bzgdownloads.s3.amazonaws.com/Coherence/"
  name "Coherence"
  desc "Turn websites into apps"
  homepage "https://bzgapps.com/coherence"

  livecheck do
    url "https://bzgdownloads.s3.amazonaws.com/Coherence/App+Cast/Coherence+X+#{version.major}+appcast.xml"
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
