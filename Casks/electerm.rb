cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.22.8"

  if Hardware::CPU.intel?
    sha256 "d853d89d07634d8fe234dcb51ada39ba98103d06ae95aa8a0b142be980152923"
  else
    sha256 "af70c87b6704b72935e088f697477e607ce1bc0c0893156ae90a0ed3972a54ff"
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
