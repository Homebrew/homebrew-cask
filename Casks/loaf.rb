cask "loaf" do
  version "1.1.10"
  sha256 "eb162200c9ca920e3d9472a42a1d91a8331eada080a701ed6ca65063e46a3c61"

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
