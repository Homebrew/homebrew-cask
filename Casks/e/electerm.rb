cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.39.5"
  sha256 arm:   "24d0d109aaba447f631fc54aa68758c292de91e335accca001917ccfc75bbb29",
         intel: "1733e687f847e470bc8de8ba17714baf79ac0c4960abd55fab4aef8cdb7064b5"

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
