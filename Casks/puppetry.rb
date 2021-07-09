cask "puppetry" do
  version "3.2.5"
  sha256 "4f00a3518d505b9ad95d3cf10d8826ccb5b2b4136a4ac09f04390871a452f728"

  url "https://github.com/dsheiko/puppetry/releases/download/v#{version}/puppetry-mac-v#{version}.zip",
      verified: "github.com/dsheiko/puppetry/"
  name "Puppetry"
  desc "Web testing solution for non-developers on top of Puppeteer and Jest"
  homepage "https://puppetry.app/"

  app "puppetry.app"

  zap trash: [
    "~/Library/Application Support/puppetry",
    "~/Library/Preferences/com.dsheiko.puppetry.plist",
    "~/Library/Saved Application State/com.dsheiko.puppetry.savedState",
  ]
end
