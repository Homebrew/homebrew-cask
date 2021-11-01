cask "loaf" do
  version "1.1.17"
  sha256 "ea16a72c45ba0e5eef5e025c66cdc6a18ebb7c8b25f092e38e42a5929b20eeac"

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
