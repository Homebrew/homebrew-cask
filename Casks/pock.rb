cask "pock" do
  version "0.8.1-5"
  sha256 "f3b301e06c5b54159607e5b6813ed8f7a8a90908de2a1782986825e623203b37"

  url "https://pock.dev/download.php?file=pock_#{version.dots_to_underscores.gsub(/-/, "__")}.zip&nw=1"
  name "Pock"
  desc "Utility to display the Dock in the Touch Bar"
  homepage "https://pock.dev/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Latest version: (\d+(?:\.\d+)*(?:-\d+)?)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Pock.app"

  zap trash: [
    "~/Library/Application Support/Pock",
    "~/Library/Application Support/com.pigigaldi.pock",
    "~/Library/Caches/com.pigigaldi.pock",
    "~/Library/Preferences/com.pigigaldi.pock.plist",
  ]
end
