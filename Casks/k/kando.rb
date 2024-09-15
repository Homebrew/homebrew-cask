cask "kando" do
  arch arm: "arm64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "aad626bb4cab8864c323b8237559d007cc2a11411ad1ca1e803d53b413c4654a",
         intel: "10acd1d41937aa3e5ae993efc2c1e47dadbc1353d408591c97ad514e807bcae8"

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
