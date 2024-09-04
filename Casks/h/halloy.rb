cask "halloy" do
  version "2024.11"
  sha256 "62785be45671d49b4b613b5209e94c8a8256bd5ff7d01ac8b6b7b0fce343f786"

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
