cask "ferdium@nightly" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux-Portable"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: "x86_64.AppImage"

  version "7.2.4-nightly.1"
  sha256 arm:          "f581846ec508c4871a5558e0614db70e97058a1f07f731f4963b08404e149ea1",
         intel:        "7ccfe6f3c0b4d350d5327e642710c38a478fd42c1be46e19138347f88e18371a",
         x86_64_linux: "83d70f0ffd5d2c9258b5f5ca74d1422c811b19dd1a993919751d88c51e753005"

  on_macos do
    depends_on macos: :ventura

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
    depends_on arch: :x86_64

    app_image "Ferdium-linux-Portable-#{version}-x86_64.AppImage", target: "Ferdium Nightly.AppImage"
  end

  url "https://github.com/ferdium/ferdium-app/releases/download/v#{version}/Ferdium-#{os}-#{version}-#{url_end}"
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
