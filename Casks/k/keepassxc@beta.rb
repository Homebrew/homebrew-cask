cask "keepassxc@beta" do
  arch arm: "arm64", intel: "x86_64"

  version "2.8.0-beta1"
  sha256 arm:   "e7bdcea469f44d13b531ae1fc7e4e8ea4e157b939e3e13b2a6b8586e7f478337",
         intel: "7140150e5e083469137a2fb11ab1b543fead627dda904063186ebd523d527e14"

  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-#{arch}.dmg"
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: [
    "keepassxc",
    "keepassxc@snapshot",
  ]
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
