cask "readmoreading" do
  version "0.13.18"
  sha256 "cc32eee8e40dd9c7444bd3c1f7896dca558b64df50611e37c0c9e08883539500"

  url "https://cdn.readmoo.com/download/apps/desktop/osx64/el/beta/Readmoo_Desktop-#{version}.dmg"
  name "Readmo Reading"
  desc "Traditional Chinese eBook service"
  homepage "https://readmoo.com/"

  livecheck do
    url "https://readmoo.com/download/osx"
    strategy :header_match
  end

  app "Readmoo看書.app"

  zap trash: [
    "~/Library/Application Support/Readmoo看書",
    "~/Library/Logs/Readmoo看書",
    "~/Library/Preferences/com.readmoo.electron.plist",
    "~/Library/Saved Application State/com.readmoo.electron.savedState",
  ]
end
