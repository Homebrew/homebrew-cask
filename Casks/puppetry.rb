cask "puppetry" do
  version "3.2.4"
  sha256 "edf48948a10dee9acf4560be9fa537f8722b63feb724464d782527f5a27cee3c"

  # github.com/dsheiko/puppetry/ was verified as official when first introduced to the cask
  url "https://github.com/dsheiko/puppetry/releases/download/v#{version}/puppetry-mac-v#{version}.zip"
  appcast "https://github.com/dsheiko/puppetry/releases.atom"
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
