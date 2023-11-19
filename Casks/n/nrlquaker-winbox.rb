cask "nrlquaker-winbox" do
  version "3.40.0"
  sha256 "529612be1a20b9a6b2fb2d282310a2ec9aaa3be5f0f98afa4849833a9fbb2017"

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
