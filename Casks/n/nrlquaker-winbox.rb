cask "nrlquaker-winbox" do
  version "3.39.0"
  sha256 "937b5ca3a76207b7ee58d7f02578e3915aa489c9bf906f6c69fcc92e1e6f4a70"

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
