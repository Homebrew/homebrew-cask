cask "aranet4" do
  version "1.0.0"
  sha256 "4777feb5f6c008da30c02630518d0ce33f7c5ec0a18c46c9e8ddaf8ce97d947b"

  url "https://github.com/robjama/Aranet4MenuBar/releases/download/v#{version}/Aranet4-v#{version}.zip"
  name "Aranet4"
  desc "Menu bar app for monitoring Aranet4 air quality sensor"
  homepage "https://github.com/robjama/Aranet4MenuBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Aranet4.app"

  zap trash: [
    "~/Library/Caches/com.aranet.menubar",
    "~/Library/Preferences/com.aranet.menubar.plist",
  ]
end
