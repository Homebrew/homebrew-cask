cask "restic-browser" do
  version "0.3.3"
  sha256 "d2e772dd19912f0eed3053ba654cdd14ca44ea5039164be548362a8b0ab57e18"

  url "https://github.com/emuell/restic-browser/releases/download/v#{version}/Restic-Browser-v#{version}-macOS.zip"
  name "Restic Browser"
  desc "GUI to browse and restore restic backup repositories"
  homepage "https://github.com/emuell/restic-browser"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "restic"

  app "Restic-Browser.app"

  zap trash: [
    "~/Library/Application Support/org.restic.browser",
    "~/Library/Caches/org.restic.browser",
    "~/Library/Logs/org.restic.browser",
    "~/Library/Preferences/org.restic.browser.plist",
    "~/Library/WebKit/org.restic.browser",
  ]
end
