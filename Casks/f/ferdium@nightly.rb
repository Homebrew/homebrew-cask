cask "ferdium@nightly" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux-Portable"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: "x86_64.AppImage"

  version "7.2.1-nightly.2"

  on_macos do
    sha256 arm:   "a4b9c1605e6dced4c60cb9ac59ff15e84c2212138338e8ecbb657c71c0b00c30",
           intel: "0ef4e1134f7b1728cb70bc61f870241117b2e5c22ba81223fb90b6e20ed9ce3b"

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
    sha256 "4e60df84ca398612ea8109f31c782766eada4ff4aa3026a6e04ae6c095131ed7"

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
