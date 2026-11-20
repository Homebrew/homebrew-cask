cask "coherence-x" do
  version "5.1.4"
  sha256 "25321db4c6925dac527211e8a176118adf32840a351d3870b553492bad6a4a99"

  url "https://bzgdownloads.s3.amazonaws.com/Coherence/Coherence+X+#{version}.zip"
  name "Coherence X"
  desc "Turn websites into apps"
  homepage "https://bzgapps.com/coherence"

  livecheck do
    url "https://bzgdownloads.s3.amazonaws.com/Coherence/App+Cast/appcast#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

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
