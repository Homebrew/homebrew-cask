cask "ballast" do
  version "1.2.1"
  sha256 "947c0c417ddf0fa0abcdb4d8e9b49f9e26bf17bd3590261f0d8ca1acabe8cf97"

  # github.com/jamsinclair/ballast/ was verified as official when first introduced to the cask
  url "https://github.com/jamsinclair/ballast/releases/download/v#{version}/ballast-v#{version}.zip"
  appcast "https://github.com/jamsinclair/ballast/releases.atom"
  name "ballast"
  desc "Status Bar app to keep the audio balance from drifting"
  homepage "https://jamsinclair.nz/ballast"

  depends_on macos: ">= :sierra"

  app "ballast.app"

  uninstall quit:      "nz.jamsinclair.ballast",
            launchctl: "nz.jamsinclair.ballast-LaunchAtLoginHelper"

  zap trash: [
    "~/Library/Preferences/nz.jamsinclair.ballast.plist",
    "~/Library/Application Scripts/nz.jamsinclair.ballast",
    "~/Library/Application Scripts/nz.jamsinclair.ballast-LaunchAtLoginHelper",
    "~/Library/Containers/nz.jamsinclair.ballast",
    "~/Library/Containers/nz.jamsinclair.ballast-LaunchAtLoginHelper",
  ]
end
