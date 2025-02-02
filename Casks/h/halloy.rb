cask "halloy" do
  version "2025.1"
  sha256 "90fb1c7c20c10ffc822aad37298be32d30e36c72cb477948b552481d2ca738f0"

  url "https://github.com/squidowl/halloy/releases/download/#{version}/halloy.dmg",
      verified: "github.com/squidowl/halloy/"
  name "Halloy"
  desc "IRC client"
  homepage "https://halloy.squidowl.org/"

  depends_on macos: ">= :big_sur"

  app "Halloy.app"

  zap trash: [
    "~/Library/Application Support/halloy",
    "~/Library/Saved Application State/org.squidowl.halloy.savedState",
  ]
end
