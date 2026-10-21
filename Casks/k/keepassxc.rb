cask "keepassxc" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "dmg", linux: "AppImage"

  version "2.8.0"
  sha256 arm:          "223d5c71ae6c11d48192c69fd582fd5f10047e91ebcebc014de33a42539b9519",
         intel:        "002b805ede4d9755b554987b9c482fb8bab79ec01d18d1f70dbf3114e2f9469a",
         x86_64_linux: "b52889fd627ae7a1c609b91b2526ccd5d847ec6707ac6eb634553186dee4f705"

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
