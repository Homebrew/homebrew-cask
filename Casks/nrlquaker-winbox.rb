cask "nrlquaker-winbox" do
  version "3.27.1"
  sha256 "62f16c77853e6d8d8bf7f0147b3cc691352ee9505a4d48aab3780d645b771d3f"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast "https://github.com/nrlquaker/winbox-mac/releases.atom"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
