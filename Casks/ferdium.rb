cask "ferdium" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "6.0.0-nightly.58"

  if Hardware::CPU.intel?
    sha256 "9fa3642a2007375177ddd131d82f69fb8ffc5bb9e8c389bf3647f8d8b81aac8b"
  else
    sha256 "7949714ef593296331ae24be23ef138f27817e09d99899fc5ed1ab5ce108fd0a"
  end

  url "https://github.com/ferdium/ferdium-app/releases/download/v#{version}/Ferdium-#{version}#{arch}.dmg",
      verified: "github.com/ferdium/ferdium-app/"
  name "Ferdium"
  desc "Multi-platform multi-messaging app"
  homepage "https://ferdium.org/"

  auto_updates true

  app "Ferdium.app"

  uninstall quit:   "com.ferdium.ferdium-app",
            delete: "/Library/Logs/DiagnosticReports/Ferdium Helper_.*wakeups_resource.diag"

  zap trash: [
    "~/Library/Application Support/Caches/ferdium-updater",
    "~/Library/Application Support/Ferdium",
    "~/Library/Caches/com.ferdium.ferdium-app",
    "~/Library/Caches/com.ferdium.ferdium-app.ShipIt",
    "~/Library/Logs/Ferdium",
    "~/Library/Preferences/ByHost/com.ferdium.ferdium-app.ShipIt.*.plist",
    "~/Library/Preferences/com.electron.ferdium.helper.plist",
    "~/Library/Preferences/com.electron.ferdium.plist",
    "~/Library/Preferences/com.ferdium.ferdium-app.plist",
    "~/Library/Saved Application State/com.ferdium.ferdium-app.savedState",
  ]
end
