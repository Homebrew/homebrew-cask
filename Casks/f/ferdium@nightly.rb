cask "ferdium@nightly" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux-Portable"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: "x86_64.AppImage"

  version "7.2.2-nightly.2"

  on_macos do
    sha256 arm:   "74a6e93bafdf72ea0561f999e547c808a69fc08517a296c4cd6590a425ae8117",
           intel: "7d1a23123f0c0a19fcc4d5d42cbeedbea5cbe42e1d97226354d34ca7e2402ea6"

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
    sha256 "29ec3b3d7db7f5e792610948bd0e0283c917b5f19506c6c7e745d8553a77f1e8"

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
