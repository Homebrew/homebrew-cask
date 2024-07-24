cask "nrlquaker-winbox" do
  version "3.40.1"
  sha256 "a1334ed8e9e909044ee556b9114d886d3b90cefddbe4cee3751c1d096aeeeef4"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
