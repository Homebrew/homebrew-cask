cask "pock" do
  version "0.8.1-5"
  sha256 "f3b301e06c5b54159607e5b6813ed8f7a8a90908de2a1782986825e623203b37"

  url "https://pock.app/builds/pock_#{version.dots_to_underscores.gsub(/-/, "__")}.zip"
  name "Pock"
  desc "Utility to display the Dock in the Touch Bar"
  homepage "https://pock.app/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Latest version: (\d+(?:\.\d+)*(?:-\d+)?)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Pock.app"

  zap trash: [
    "~/Library/Application Scripts/com.pigigaldi.pock.QLPockWidget",
    "~/Library/Application Support/Pock",
    "~/Library/Application Support/com.pigigaldi.pock",
    "~/Library/Caches/com.pigigaldi.pock",
    "~/Library/Containers/com.pigigaldi.pock.QLPockWidget",
    "~/Library/Preferences/com.pigigaldi.pock.plist",
  ]
end
