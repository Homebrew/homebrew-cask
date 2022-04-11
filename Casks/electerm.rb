cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.21.14"

  if Hardware::CPU.intel?
    sha256 "4ddcf6bbcabbc63b5848363e1f4015e100b2a37df8ae9ae8a8617fe9f156c184"
  else
    sha256 "9037ad3b99752326aebf1d2a6e348635fe15de5b27c30f24a8e484b0c86118f0"
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
