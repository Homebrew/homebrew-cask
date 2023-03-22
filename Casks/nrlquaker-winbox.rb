cask "nrlquaker-winbox" do
  version "3.37.1"
  sha256 "c54136e4287cb6a79ca04ef72b52035f077a3c68060885ae0283939defaf4630"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
