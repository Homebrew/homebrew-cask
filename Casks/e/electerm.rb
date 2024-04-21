cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.38.70"
  sha256 arm:   "8fc97a467ca53cb05f6055f4f7f3d05113d73fbc93d91395d5d5f30e99a4dc7a",
         intel: "ca4b09c105c957ad8e011a998dc3cd35c82a832d1203e3b9061632722f264edc"

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
