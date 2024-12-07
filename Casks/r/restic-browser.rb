cask "restic-browser" do
  version "0.3.1"
  sha256 "30fc1daebc2705d15f85803f1aee9a37ff2b5d99278c3ee4db9482e427a04c2c"

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
