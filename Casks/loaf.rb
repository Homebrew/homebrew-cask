cask "loaf" do
  version "1.1.1"
  sha256 "0387f48cb06ba5c475d2630088e72bb174db51de154157c484c393b094a9d544"

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
