cask "nrlquaker-winbox" do
  version "3.37.0"
  sha256 "02294303a181663a79070c60d2c56e7e5b9aa36fa68c7abddcd7bf05078a7ae8"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
