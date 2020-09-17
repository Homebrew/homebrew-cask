cask "loaf" do
  version "1.1.2"
  sha256 "f68ef94b6f3d671fab833699150bd0b16451aab025dddb48e0b94e50f65eddeb"

  # github.com/philipardeljan/getloaf/ was verified as official when first introduced to the cask
  url "https://github.com/philipardeljan/getloaf/releases/download/v#{version}/loaf.dmg"
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
