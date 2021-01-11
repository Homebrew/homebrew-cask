cask "pock" do
  version "0.8.0"
  sha256 "547ce01017d64d3d502dbc1304f94b9f52c8559369e82777202b246a90a00e13"

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
