cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.34.8"
  sha256 arm:   "239a617b4abd83579f27094bb553f64207375fab9fba4d63608ebae1f07e07e5",
         intel: "8c9106d72085b2155c8c90e2900200295a386e62ba4156a3784222424952a6a8"

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
