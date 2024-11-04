cask "kando" do
  arch arm: "arm64", intel: "x64"

  version "1.5.1"
  sha256 arm:   "57d4166ab5ef35ac7995a55d6581c6f6bf1243200bcfa4103d00a51237ecdb12",
         intel: "f59b30a3fa4f82c8b1b1f618f9cdac3ab1157bfcda951e3d41ea224562e9f028"

  url "https://github.com/kando-menu/kando/releases/download/v#{version}/Kando-#{version}-#{arch}.dmg"
  name "Kando"
  desc "Pie Menu"
  homepage "https://github.com/kando-menu/kando"

  depends_on macos: ">= :catalina"

  app "Kando.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.kando.sfl*",
    "~/Library/Application Support/Kando",
    "~/Library/Preferences/com.electron.kando.plist",
  ]
end
