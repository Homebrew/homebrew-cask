cask "nrlquaker-winbox" do
  version "3.27.0"
  sha256 "e38aca871ac88ad1e5646901519ffc9923d445dcb7e50b8c847f1bd874c65326"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast "https://github.com/nrlquaker/winbox-mac/releases.atom"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
