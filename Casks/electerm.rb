cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.22.1"

  if Hardware::CPU.intel?
    sha256 "a499412a8d57f3a76b777987548353242fefae6c557b3c08352b9c4417f9e226"
  else
    sha256 "4cd06d56497f57d62451cc7cfad6f698927a7e5cf130bee4f54082e0a42fc1c0"
  end

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
