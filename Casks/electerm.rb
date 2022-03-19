cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.19.0"

  if Hardware::CPU.intel?
    sha256 "3a31070d4f85e602ce556326000a00a329240df945716d9ea289b15f03834ea4"
  else
    sha256 "b900cd019d1c0cedff6bc9026bf02d8451862d768e4bebdf6541f2acda26f4e5"
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
