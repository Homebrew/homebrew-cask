cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.60.48"
  sha256 arm:   "6b403b05071dd27e890ecdf968b187395a608df7eba1dc931715a928b034b1b8",
         intel: "f18ec7b2f4bd0c9b7abe40a03ff73c9ea40448603bb2a6ba1bf2977857815541"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
