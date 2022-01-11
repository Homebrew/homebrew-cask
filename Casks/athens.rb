cask "athens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.0.0"

  if Hardware::CPU.intel?
    sha256 "322744478e3277216a129dd162e04ae24587d71eedafa6681b30a976b2521c9b"
  else
    sha256 "c5bd8759f3f6f10a91ed950acc25d51cc9bc5e70515515e36a1e3fec2579e375"
  end

  url "https://github.com/athensresearch/athens/releases/download/v#{version}/Athens-#{version}#{arch}.dmg",
      verified: "github.com/athensresearch/athens/"
  name "Athens"
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
