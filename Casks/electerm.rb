cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.18.1"

  if Hardware::CPU.intel?
    sha256 "7de763ae2c9f2db152a6dae89f40c37ee379ca98c141cea6cbe2e36e2e2f5a2b"
  else
    sha256 "d0e47ff898912017589a64b65a647416e1dd98930eb87960d903b2852859b56a"
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
