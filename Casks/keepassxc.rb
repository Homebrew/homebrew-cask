cask "keepassxc" do
  version "2.6.4"

  if Hardware::CPU.intel?
    url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-x86_64.dmg",
        verified: "github.com/keepassxreboot/keepassxc/"
    sha256 "639fdfe0379dc3f00f1bd6a72c974cfddae0d4c8ddb66f7297d0b01b1a582ede"
  else
    url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-arm64.dmg",
        verified: "github.com/keepassxreboot/keepassxc/"
    sha256 "16dcdfae65ad8887b4d9cd86bf56bc7df2dca3e3fedf91b07b42a0f6e1465c48"
  end

  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "homebrew/cask-versions/keepassxc-beta"
  depends_on macos: ">= :high_sierra"

  app "KeePassXC.app"
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  zap trash: [
    "~/.keepassxc",
    "~/Library/Application Support/keepassxc",
    "~/Library/Caches/org.keepassx.keepassxc",
    "~/Library/Preferences/org.keepassx.keepassxc.plist",
    "~/Library/Saved Application State/org.keepassx.keepassxc.savedState",
    "~/Library/Logs/DiagnosticReports/KeePassXC_*.crash",
    "~/Library/Application Support/CrashReporter/KeePassXC_*.plist",
  ]
end
