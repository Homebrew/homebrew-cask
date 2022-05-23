cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.21.57"

  if Hardware::CPU.intel?
    sha256 "2ba2b60599d05bd1ef70fced3af238ae12856491460758ab90747e9e5134d657"
  else
    sha256 "0c0b6ed02fe1a3c51b260e9373d655ca726539f52d8f14973fb5f458d1f1f53e"
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
