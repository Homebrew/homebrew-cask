cask "ferdi" do
  version "5.6.1"

  if Hardware::CPU.intel?
    sha256 "6a36ed8edcd742c0924d16f0c99be5b0fce061246143059491a2212b4df139db"

    url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}.dmg",
        verified: "github.com/getferdi/ferdi/"
  else
    sha256 "6083a099e3e14e596af66f84ecbf327e9669ede8a510d3286b3eb6e3f42709b7"

    url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}-arm64.dmg",
        verified: "github.com/getferdi/ferdi/"
  end

  name "Ferdi"
  desc "Messaging browser which combines several services"
  homepage "https://getferdi.com/"

  livecheck do
    url "https://github.com/getferdi/ferdi/releases/"
    strategy :page_match
    regex(/Ferdi[._-](\d+(?:\.\d+)*)\.dmg/i)
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
