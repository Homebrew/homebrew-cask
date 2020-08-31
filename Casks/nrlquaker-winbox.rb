cask "nrlquaker-winbox" do
  version "3.25.0"
  sha256 "77a532ab89bf7233c3a35f3cc3663459f527d003f52013f0d58466591f9cf696"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast "https://github.com/nrlquaker/winbox-mac/releases.atom"
  name "Winbox-mac"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
