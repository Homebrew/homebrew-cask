cask "keepassxc" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "dmg", linux: "AppImage"

  version "2.7.12"
  sha256 arm:          "65f4f63607180c0a15794b4a4068f85e99ed5391c87c1fb9312648f1b36fed40",
         intel:        "f55737bf759b7ea622967ae979e8fd0ef06a8133104124c24861fd11a3fe14b5",
         x86_64_linux: "564fe8b751b9ef7aa057e4d3d0b2878db24eaa0f6b1c855c82e699ab0913ae49"

  on_macos do
    depends_on macos: :monterey

    app "KeePassXC.app"
    binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"
    manpage "#{appdir}/KeePassXC.app/Contents/Resources/man/man1/keepassxc.1"
    manpage "#{appdir}/KeePassXC.app/Contents/Resources/man/man1/keepassxc-cli.1"

    uninstall quit: "org.keepassxc.keepassxc"

    zap trash: [
      "~/.keepassxc",
      "~/Library/Application Support/CrashReporter/KeePassXC_*.plist",
      "~/Library/Application Support/keepassxc",
      "~/Library/Caches/org.keepassx.keepassxc",
      "~/Library/Logs/DiagnosticReports/KeePassXC_*.crash",
      "~/Library/Preferences/keepassxc.keepassxc.plist",
      "~/Library/Preferences/org.keepassx.keepassxc.plist",
      "~/Library/Saved Application State/org.keepassx.keepassxc.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "KeePassXC-#{version}-#{arch}.AppImage", target: "KeePassXC.AppImage"

    zap trash: [
      "~/.cache/keepassxc",
      "~/.config/keepassxc",
    ]
  end

  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-#{arch}.#{os}"
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: [
    "keepassxc@beta",
    "keepassxc@snapshot",
  ]
end
