cask "journey" do
  version "2.14.3"
  sha256 "aa3de8061bb169765c44fd256b0885c807ccebb771ba045b59eaf04815231583"

  # github.com/2-App-Studio/journey-releases/ was verified as official when first introduced to the cask
  url "https://github.com/2-App-Studio/journey-releases/releases/download/v#{version}/Journey-darwin-#{version}.zip"
  appcast "https://github.com/2-App-Studio/journey-releases/releases.atom"
  name "Journey"
  desc "Diary app"
  homepage "https://2appstudio.com/journey/"

  auto_updates true

  app "Journey.app"

  zap trash: [
    "~/Library/Application Support/Journey#{version.major}",
    "~/Library/Preferences/com.journey.mac#{version.major}.helper.plist",
    "~/Library/Preferences/com.journey.mac#{version.major}.plist",
    "~/Library/Saved Application State/com.journey.mac#{version.major}.savedState",
  ]
end
