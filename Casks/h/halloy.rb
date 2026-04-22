cask "halloy" do
  version "2026.6"
  sha256 "3aae2beb95b1fddaf4e30ee0d2ed59d3c9ec58781c079783bcebd3e7dd8e9216"

  url "https://github.com/squidowl/halloy/releases/download/#{version}/halloy.dmg",
      verified: "github.com/squidowl/halloy/"
  name "Halloy"
  desc "IRC client"
  homepage "https://halloy.chat/"

  depends_on macos: ">= :big_sur"

  app "Halloy.app"

  zap trash: [
    "~/Library/Application Support/halloy",
    "~/Library/Saved Application State/org.squidowl.halloy.savedState",
  ]
end
