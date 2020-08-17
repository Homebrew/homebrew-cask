cask "loaf" do
  version "1.1.0"
  sha256 "4499ace77b0500ebfd3199ea73e7a3fa6c2a14359056489f30dc67caf170c8ee"

  # github.com/philipardeljan/getloaf/ was verified as official when first introduced to the cask
  url "https://github.com/philipardeljan/getloaf/releases/download/v#{version}/loaf.dmg"
  appcast "https://github.com/philipardeljan/getmotion/releases.atom"
  name "Loaf"
  homepage "https://www.getmotion.io/"

  app "Loaf.app"

  zap trash: [
    "~/Library/Application Support/Motion (beta)",
    "~/Library/Preferences/com.motionicons.studio.plist",
  ]
end
