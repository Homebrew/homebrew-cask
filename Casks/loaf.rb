cask "loaf" do
  version "1.1.16"
  sha256 "438405ba9b3b4d77af3cba0b4e39de60ebdd9c1f9ddab744c3a4a012fecdcb49"

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
