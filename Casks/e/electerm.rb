cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.60.6"
  sha256 arm:   "8f9af2644eb719efe6d0e9718938b853b15a2593625b61d81a04d595c6c2b6c9",
         intel: "79420ae5b52ca0afce2fe2e2fdae2e9bfa0dc933ad4fc6045ba58b53576ab3f2"

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
