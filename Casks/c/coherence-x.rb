cask "coherence-x" do
  version "5.1.2"
  sha256 "f92a16c58c0d6bc23938c86025e79ce7293750b8e970e781bb4c2e72132ff3aa"

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
