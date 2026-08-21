cask "ferdium@nightly" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux-Portable"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: "x86_64.AppImage"

  version "7.2.1-nightly.3"

  on_macos do
    sha256 arm:   "1c6aa879a7fcbf6c39bef8293240551774458e5b61a6c35e1bca9e28b5665c24",
           intel: "09c185af3dbb9d78b53a814c311559cce5f1c587390158bd73cb7e82b234c7f5"

    depends_on macos: :monterey

    app "Ferdium.app"

    uninstall quit:   "com.ferdium.ferdium-app",
              delete: "/Library/Logs/DiagnosticReports/Ferdium Helper_.*wakeups_resource.diag"

    zap trash: [
      "~/Library/Application Support/Caches/ferdium-updater",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.ferdium.ferdium-app.sfl*",
      "~/Library/Application Support/Ferdium",
      "~/Library/Caches/com.ferdium.ferdium-app",
      "~/Library/Caches/com.ferdium.ferdium-app.ShipIt",
      "~/Library/Logs/Ferdium",
      "~/Library/Preferences/ByHost/com.ferdium.ferdium-app.ShipIt.*.plist",
      "~/Library/Preferences/com.electron.ferdium.helper.plist",
      "~/Library/Preferences/com.electron.ferdium.plist",
      "~/Library/Preferences/com.ferdium.ferdium-app.plist",
      "~/Library/Preferences/org.ferdium.ferdium-app.plist",
      "~/Library/Saved Application State/com.ferdium.ferdium-app.savedState",
      "~/Library/Saved Application State/org.ferdium.ferdium-app.savedState",
    ]
  end
  on_linux do
    sha256 "0cb21a863342b582ad8203498383e7ef51c6a2f79ea85d50952047633085a52d"

    depends_on arch: :x86_64

    app_image "Ferdium-linux-Portable-#{version}-x86_64.AppImage", target: "Ferdium Nightly.AppImage"
  end

  url "https://github.com/ferdium/ferdium-app/releases/download/v#{version}/Ferdium-#{os}-#{version}-#{url_end}",
      verified: "github.com/ferdium/ferdium-app/"
  name "Ferdium Nightly"
  desc "Multi-platform multi-messaging app"
  homepage "https://ferdium.org/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+-nightly\.\d+)/i)
  end

  auto_updates true
  conflicts_with cask: "ferdium"
end
