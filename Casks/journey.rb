cask "journey" do
  version "2.14.6"
  sha256 "19da0e4da7983f54c1dabd7bc8bfb03ff8d783ad02a4fb9701b4f2891450e44a"

  url "https://github.com/2-App-Studio/journey-releases/releases/download/v#{version}/Journey-darwin-#{version}.zip",
      verified: "github.com/2-App-Studio/journey-releases/"
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
