cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.18.5"

  if Hardware::CPU.intel?
    sha256 "5c815fa7595509d8f7fbe3ef1c4c0857ebd28c40f8c87c665d9210e87707fea4"
  else
    sha256 "c93fe15d79c318dcc9f8f7ae0931236f66569ecf1249578367912828fad4abec"
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
