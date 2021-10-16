cask "ferdi" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.6.2"

  url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}#{arch}.dmg",
      verified: "github.com/getferdi/ferdi/"
  if Hardware::CPU.intel?
    sha256 "bfad74f6b22364f8ee80a3faf1b386707e76949c5eea68a47df11d298ee0bbc8"
 else
    sha256 "51dfa80046037bd53b3ace758b29b8a8f809b7493388cbcf96a408895ea089ea"
  end

  name "Ferdi"
  desc "Messaging browser which combines several services"
  homepage "https://getferdi.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Ferdi.app"

  uninstall quit:   "com.kytwb.ferdi",
            delete: "/Library/Logs/DiagnosticReports/Ferdi Helper_.*wakeups_resource.diag"

  zap trash: [
    "~/Library/Application Support/Caches/ferdi-updater",
    "~/Library/Application Support/Ferdi",
    "~/Library/Caches/com.kytwb.ferdi",
    "~/Library/Caches/com.kytwb.ferdi.ShipIt",
    "~/Library/Logs/Ferdi",
    "~/Library/Preferences/ByHost/com.kytwb.ferdi.ShipIt.*.plist",
    "~/Library/Preferences/com.electron.ferdi.helper.plist",
    "~/Library/Preferences/com.electron.ferdi.plist",
    "~/Library/Preferences/com.kytwb.ferdi.plist",
    "~/Library/Saved Application State/com.kytwb.ferdi.savedState",
  ]
end
