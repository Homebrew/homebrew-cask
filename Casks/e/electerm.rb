cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.31.1"
  sha256 arm:   "9c087a56e513485b2fc407d59db8d9a7d31c476b16881be5e39b5ad659fc00b0",
         intel: "6b876c685d080a3d9380bfb18d0d43ae2c8f050f0537e82e2854791f5c30b31b"

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
