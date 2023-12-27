cask "openineditor-lite" do
  version "1.2.6"
  sha256 "ce163393705469495e9506449c109bea1925eb5e0cefed28e8bc133662f51138"

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
