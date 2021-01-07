cask "keepassxc" do
  version "2.6.2,2"
  sha256 "611b940952d5d51c2865d35e6916954a4ff3454bc8ae4dcc7abed0a4cda7d90d"

  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version.before_comma}/KeePassXC-#{version.before_comma}-#{version.after_comma}.dmg",
      verified: "github.com/keepassxreboot/keepassxc/"
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  livecheck do
    url "https://github.com/keepassxreboot/keepassxc/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/KeePassXC-(\d+(?:.\d+)*)-(\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
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
