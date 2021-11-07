cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.17.3"

  if Hardware::CPU.intel?
    sha256 "74dd8b394970eaed784c7d4eda145b9b9e02dbae787ec9bddeb3133d72f560e3"
  else
    sha256 "2fa227cfe7f449d3cdda13251a2c2432523362e95d047e63b66d74923af87342"
  end

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
