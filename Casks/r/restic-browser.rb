cask "restic-browser" do
  version "0.3.2"
  sha256 "8b2138661571a6f6f80210cffe5c4b03b4b7436c751a28941a77a113fded7a68"

  url "https://github.com/emuell/restic-browser/releases/download/v#{version}/Restic-Browser-v#{version}-macOS.zip"
  name "Restic Browser"
  desc "GUI to browse and restore restic backup repositories"
  homepage "https://github.com/emuell/restic-browser"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "restic"
  depends_on macos: ">= :high_sierra"

  app "Restic-Browser.app"

  zap trash: [
    "~/Library/Application Support/org.restic.browser",
    "~/Library/Caches/org.restic.browser",
    "~/Library/Logs/org.restic.browser",
    "~/Library/Preferences/org.restic.browser.plist",
    "~/Library/WebKit/org.restic.browser",
  ]
end
