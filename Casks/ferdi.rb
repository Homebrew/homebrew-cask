cask "ferdi" do
  version "5.6.0"

  if Hardware::CPU.intel?
    sha256 "ea211cd14be8e98b81eeadac75920d85a54f89631512bcd06f80a7c04d777137"

    url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}.dmg",
        verified: "github.com/getferdi/ferdi/"
  else
    sha256 "44dd529ece76c51d5748e6c7e06026f36eda73d2915fafe5b91282b913902f70"

    url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}-arm64.dmg",
        verified: "github.com/getferdi/ferdi/"
  end

  name "Ferdi"
  desc "Messaging browser which combines several services"
  homepage "https://getferdi.com/"

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
