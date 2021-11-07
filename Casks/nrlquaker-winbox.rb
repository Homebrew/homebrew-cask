cask "nrlquaker-winbox" do
  version "3.31.0"
  sha256 "431c87b4426d09b7c05de57e0c4a9fd21a41e84c3dca8050d45b3d984e1d0cef"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
