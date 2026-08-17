cask "ferdium" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux-Portable"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: "x86_64.AppImage"

  version "7.1.2"

  on_macos do
    sha256 arm:   "27cb2b3e1b193b2d337db5042d648561ea268a3e25e5973df91d2ae8f08c3f4b",
           intel: "8eaf2971b1b8a3afaa72aa9c830eace0b55690e266061f373cbe351c8b3116ba"

    depends_on macos: :big_sur

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
    sha256 "70271f0cffbf6227fba0958a8189b7b138959ab121537fec43c09b8d0e0d6b29"

    depends_on arch: :x86_64

    app_image "Ferdium-linux-Portable-#{version}-x86_64.AppImage", target: "Ferdium.AppImage"
  end

  url "https://github.com/ferdium/ferdium-app/releases/download/v#{version}/Ferdium-#{os}-#{version}-#{url_end}",
      verified: "github.com/ferdium/ferdium-app/"
  name "Ferdium"
  desc "Multi-platform multi-messaging app"
  homepage "https://ferdium.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
