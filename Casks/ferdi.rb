cask "ferdi" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.7.0"

  if Hardware::CPU.intel?
    sha256 "623878dfe612a668839b42b1803ff34a3cf4f56e06aa641f76ba81e69eadeb63"
  else
    sha256 "dba836299ec62bfbdf62451f55808f0e8975bacfe65d6b8d97512d1e4ec255c7"
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
