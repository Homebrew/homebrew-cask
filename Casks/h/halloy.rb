cask "halloy" do
  version "2026.7"
  sha256 "70c910130d7f28799ba44c1506bb5ca25bf9ac34f8c8e221ee01ae55073635f0"

  url "https://github.com/squidowl/halloy/releases/download/#{version}/halloy.dmg",
      verified: "github.com/squidowl/halloy/"
  name "Halloy"
  desc "IRC client"
  homepage "https://halloy.chat/"

  depends_on macos: :big_sur

  app "Halloy.app"

  zap trash: [
    "~/Library/Application Support/halloy",
    "~/Library/Saved Application State/org.squidowl.halloy.savedState",
  ]
end
