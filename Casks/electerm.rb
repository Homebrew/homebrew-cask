cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.20.4"

  if Hardware::CPU.intel?
    sha256 "d6b9971ee89d404826002cc6d3500ebb76e2d3b30e61b2494b33b371923c20a9"
  else
    sha256 "769280488ec3a48496e157488ab1a35af0373aa3e694b84955dfdf24a489dd66"
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
