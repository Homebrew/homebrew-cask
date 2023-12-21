cask "ballast" do
  version "2.0.0"
  sha256 "ec96d590fd9dbe38fe50de006160d4ff2bd10187c4b011c1f5c5ea741044904a"

  url "https://github.com/jamsinclair/ballast/releases/download/v#{version}/ballast-v#{version}.zip",
      verified: "github.com/jamsinclair/ballast/"
  name "ballast"
  desc "Status Bar app to keep the audio balance from drifting"
  homepage "https://jamsinclair.nz/ballast"

  depends_on macos: ">= :sierra"

  app "ballast.app"

  uninstall launchctl: "nz.jamsinclair.ballast-LaunchAtLoginHelper",
            quit:      "nz.jamsinclair.ballast"

  zap trash: [
    "~/Library/Preferences/nz.jamsinclair.ballast.plist",
    "~/Library/Application Scripts/nz.jamsinclair.ballast",
    "~/Library/Application Scripts/nz.jamsinclair.ballast-LaunchAtLoginHelper",
    "~/Library/Containers/nz.jamsinclair.ballast",
    "~/Library/Containers/nz.jamsinclair.ballast-LaunchAtLoginHelper",
  ]
end
