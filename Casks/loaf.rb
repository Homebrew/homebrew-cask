cask "loaf" do
  version "1.1.4"
  sha256 "385c63887e9362b801a7929f6957cd37091fe114d75faa75bfe6eb7bd6b77cd0"

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
