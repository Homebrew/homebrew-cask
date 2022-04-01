cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.20.10"

  if Hardware::CPU.intel?
    sha256 "41dc20386dcf5f3512239bb5fc948eecebd8efda155a023c1e9d728854540c59"
  else
    sha256 "52852d991e98f56532f13fe64cf25be90270a1e29492e44bc0c12cfb44d1ad0f"
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
