cask "pock" do
  version "0.8.0-10"
  sha256 "a34b531f174f841cb56a4d3c5507b46604577fe51159b3e0bdc2ba12846f57f2"

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
