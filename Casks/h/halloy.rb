cask "halloy" do
  version "2026.9"
  sha256 "52f889a9225ba515aa74f1eb5f9a4f139360634a1712db4eb911a968a4855a0e"

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
