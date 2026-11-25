cask "halloy" do
  version "2026.10"
  sha256 "3817b63334698599ae472fd9790f0594ef5cfae68124d5775ab8025f2aab4273"

  url "https://github.com/squidowl/halloy/releases/download/#{version}/halloy.dmg"
  name "Halloy"
  desc "IRC client"
  homepage "https://halloy.chat/"

  depends_on :macos

  app "Halloy.app"

  zap trash: [
    "~/Library/Application Support/halloy",
    "~/Library/Saved Application State/org.squidowl.halloy.savedState",
  ]
end
