cask "dockstation" do
  version "1.5.1"
  sha256 "3449009fcd2fc8476381d4de62b2086999281ede81f903dfb63715c3383491c7"

  # github.com/DockStation/dockstation/ was verified as official when first introduced to the cask
  url "https://github.com/DockStation/dockstation/releases/download/v#{version}/dockstation-#{version}.dmg"
  appcast "https://github.com/DockStation/dockstation/releases.atom"
  name "DockStation"
  homepage "https://dockstation.io/"

  depends_on macos: ">= :el_capitan"

  app "DockStation.app"

  zap trash: [
    "~/Library/Application Support/dockstation",
    "~/Library/Preferences/org.dockstation.DockStation.helper.plist",
    "~/Library/Preferences/org.dockstation.DockStation.plist",
    "~/Library/Saved Application State/org.dockstation.DockStation.savedState",
  ]
end
