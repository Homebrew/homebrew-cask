cask "nrlquaker-winbox" do
  version "3.28.0"
  sha256 "248cc37274ab9cdd6b2db9cf7cf14a2a9e87307095429a8a2bf1d7f7234f8c49"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
