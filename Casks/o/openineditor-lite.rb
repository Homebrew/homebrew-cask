cask "openineditor-lite" do
  version "1.2.7"
  sha256 "c079751dc86ac4a683840e62b05872acc4dfbb08d2c7019bb3c6b9d88a0c8017"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/v#{version}/OpenInEditor-Lite.zip"
  name "OpenInEditor-Lite"
  desc "Finder Toolbar app to open the current directory in Editor"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  livecheck do
    skip "No reliable way to get version info"
  end

  app "OpenInEditor-Lite.app"

  zap trash: "~/Library/Preferences/wang.jianing.app.OpenInEditor-Lite.plist"
end
