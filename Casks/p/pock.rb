cask "pock" do
  version "0.9.0-22"
  sha256 "c190b719a4ecd98680fcea6a8095432012a2b9e0067adac9d4e7b2c92dc8ca6b"

  url "https://pock.app/builds/pock_#{version.dots_to_underscores.gsub("-", "__")}.zip"
  name "Pock"
  desc "Utility to display the Dock in the Touch Bar"
  homepage "https://pock.app/"

  livecheck do
    url :homepage
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
