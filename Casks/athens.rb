cask "athens" do
  version "1.0.0"
  sha256 "322744478e3277216a129dd162e04ae24587d71eedafa6681b30a976b2521c9b"

  url "https://github.com/athensresearch/athens/releases/download/v#{version}/Athens-#{version}.dmg",
      verified: "github.com/athensresearch/athens/"
  name "athens"
  desc "Self-hosted knowledge graph"
  homepage "https://www.athensresearch.org/"

  app "Athens.app"

  zap trash: [
    "~/Documents/athens",
    "~/Library/Application Support/Athens",
    "~/Library/Logs/Athens",
    "~/Library/Preferences/com.athensresearch.athens.plist",
    "~/Library/Saved Application State/com.athensresearch.athens.savedState",
  ]
end
