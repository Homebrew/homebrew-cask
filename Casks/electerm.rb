cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.21.74"

  if Hardware::CPU.intel?
    sha256 "4012231bc98bbd3dca72eb6a736374ee6508c7c3114f4cf677f50804408a9791"
  else
    sha256 "fb297777c744de8768d0beed35f2fc9127974ca94bff5651f5b6979c60804c18"
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
