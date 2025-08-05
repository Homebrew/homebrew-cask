cask "puppetry" do
  version "3.2.6"
  sha256 "740b4892c1c7ed4164f1b9adcf2b9f27b2499d559e32029cd9af98f97b71cbfd"

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

  caveats do
    requires_rosetta
  end
end
