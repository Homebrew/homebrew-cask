cask "kando" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "c655883217bb047a4d7e5524b81e24b3758fd8ce17f8eac5aa07d47097e80dc5",
         intel: "f33b288fa16280b095ac89cfb0361cdafbcb399a738db4143756336315f4c914"

  url "https://github.com/kando-menu/kando/releases/download/v#{version}/Kando-#{version}-#{arch}.dmg",
      verified: "github.com/kando-menu/kando/"
  name "Kando"
  desc "Pie menu"
  homepage "https://kando.menu/"

  app "Kando.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.kando.sfl*",
    "~/Library/Application Support/Kando",
    "~/Library/Preferences/com.electron.kando.plist",
  ]
end
