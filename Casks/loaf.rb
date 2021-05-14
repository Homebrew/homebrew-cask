cask "loaf" do
  version "1.1.12"
  sha256 "41a95dce9152d80a657acdf0410323487f33bddda0521bf9650d6f55e68d09d1"

  url "https://github.com/philipardeljan/getloaf/releases/download/v#{version}/loaf.dmg",
      verified: "github.com/philipardeljan/getloaf/"
  name "Loaf"
  desc "Animated icon library"
  homepage "https://www.getmotion.io/"

  app "Loaf.app"

  zap trash: [
    "~/Library/Application Support/Motion (beta)",
    "~/Library/Preferences/com.motionicons.studio.plist",
  ]
end
