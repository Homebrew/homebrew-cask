cask "dockstation" do
  version "1.5.1"
  sha256 "3449009fcd2fc8476381d4de62b2086999281ede81f903dfb63715c3383491c7"

  url "https://github.com/DockStation/dockstation/releases/download/v#{version}/dockstation-#{version}.dmg",
      verified: "github.com/DockStation/dockstation/"
  name "DockStation"
  homepage "https://dockstation.io/"

  deprecate! date: "2024-07-10", because: :unmaintained

  depends_on macos: ">= :el_capitan"

  app "DockStation.app"

  zap trash: [
    "~/Library/Application Support/dockstation",
    "~/Library/Preferences/org.dockstation.DockStation.helper.plist",
    "~/Library/Preferences/org.dockstation.DockStation.plist",
    "~/Library/Saved Application State/org.dockstation.DockStation.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
