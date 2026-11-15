cask "kiri" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "c42c518eb6a4efcb995b52b987b83e848028a020eef5872e0ac16a1c7827fffa",
         intel: "66e5e9f6255ba109e1740078994d8346fbce3c1d7f77075699f3f7f6b9314cff"

  url "https://github.com/libracoder/kiri/releases/download/v#{version}/Kiri-#{version}-#{arch}.dmg"
  name "Kiri"
  desc "Container runtime that runs Docker images in a Linux VM"
  homepage "https://runkiri.com/"

  auto_updates true
  depends_on macos: :sonoma

  app "Kiri.app"
  binary "#{appdir}/Kiri.app/Contents/MacOS/kiri"

  uninstall launchctl: "dev.kiri.daemon",
            quit:      "dev.kiri.app",
            script:    {
              executable: "#{appdir}/Kiri.app/Contents/MacOS/kiri",
              args:       ["setup", "--uninstall"],
            },
            delete:    "~/Library/LaunchAgents/dev.kiri.daemon.plist"

  zap trash: [
        "~/.kiri",
        "~/Library/Application Support/Kiri",
        "~/Library/Caches/dev.kiri.app",
        "~/Library/LaunchAgents/dev.kiri.daemon.plist",
        "~/Library/WebKit/dev.kiri.app",
      ],
      rmdir: "~/Kiri"

  caveats "Open the Kiri app to finish setup."
end
