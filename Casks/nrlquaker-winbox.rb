cask "nrlquaker-winbox" do
  version "3.35.0"
  sha256 "99a45172b038c2c45b1b21fdf2d4450561d383fd2c5f130ca900a90fbae635d2"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
