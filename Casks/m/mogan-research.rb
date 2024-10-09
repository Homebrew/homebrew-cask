cask "mogan-research" do
  arch arm: "-arm"

  version "1.2.9.3"
  sha256 arm:   "74cb464ddde67d8c717c87362d5ad4b29c095be19de85ee9363f6b459ad05049",
         intel: "25bc5fc683bcc60ee720a5995b8ad5990fd702365baea5e7d0590973675cf746"

  url "https://github.com/XmacsLabs/mogan/releases/download/v#{version}/MoganResearch-v#{version}#{arch}.dmg",
      verified: "github.com/XmacsLabs/mogan/releases/download/"
  name "Mogan Research"
  desc "one of the distribution of GNU TeXmacs which is a structured scientific editing platform"
  homepage "https://mogan.app/"

  livecheck do
    url "https://github.com/XmacsLabs/mogan/releases"
    strategy :github_latest
  end

  app "MoganResearch.app"

  zap trash: [
    "~/Library/Application Support/XmacsLabs",
    "~/Library/Saved Application State/app.mogan.research.savedState",
  ]
end
