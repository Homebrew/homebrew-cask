cask "ferdi" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.6.10"

  if Hardware::CPU.intel?
    sha256 "b63986379c1589f63a4fdad8d2de1ca976bac9dce7ce6c27f6cf9f89db97a75b"
  else
    sha256 "2ca5ec2783947598f28bec81ce392d8d1d4b44f4f41ed77c8035af6d1ef12fda"
  end

  url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}#{arch}.dmg",
      verified: "github.com/getferdi/ferdi/"
  name "Ferdi"
  desc "Messaging browser which combines several services"
  homepage "https://getferdi.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/ferdi-beta"

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
