cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.22.27"

  if Hardware::CPU.intel?
    sha256 "23fbe666d1bd8550bc1bb008b3abec62f5f31c09eb5a5fb74eb4a7dea22eca7d"
  else
    sha256 "ec627f5f2783926da240a4e7ab6f38d4bf09dd1a5de93579399e4af05a111ca3"
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
