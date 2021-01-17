cask "loaf" do
  version "1.1.8"
  sha256 "c4be1f115982562819699e40b750d329ab6e7ff5e5b895be7587af50a65eab77"

  url "https://github.com/philipardeljan/getloaf/releases/download/v#{version}/loaf.dmg",
      verified: "github.com/philipardeljan/getloaf/"
  appcast "https://github.com/philipardeljan/getmotion/releases.atom"
  name "Loaf"
  desc "Animated icon library"
  homepage "https://www.getmotion.io/"

  app "Loaf.app"

  zap trash: [
    "~/Library/Application Support/Motion (beta)",
    "~/Library/Preferences/com.motionicons.studio.plist",
  ]
end
