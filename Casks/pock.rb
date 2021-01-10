cask "pock" do
  version "0.8.0__10"
  sha256 "a34b531f174f841cb56a4d3c5507b46604577fe51159b3e0bdc2ba12846f57f2"

  url "https://pock.dev/download.php?file=pock_#{version.dots_to_underscores}.zip&nw=1"
  appcast "https://github.com/pigigaldi/Pock/releases.atom"
  name "Pock"
  desc "Utility to display the Dock in the Touch Bar"
  homepage "https://pock.dev/"

  depends_on macos: ">= :sierra"

  app "Pock.app"

  zap trash: [
    "~/Library/Application Support/Pock",
    "~/Library/Application Support/com.pigigaldi.pock",
    "~/Library/Caches/com.pigigaldi.pock",
    "~/Library/Preferences/com.pigigaldi.pock.plist",
  ]
end
