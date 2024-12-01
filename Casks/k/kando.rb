cask "kando" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "33c8137a66650ce53b0f2a6bb68fa3a95de9ff627e0c43b2f4ba2b420d85c918",
         intel: "6910eacb592230e9d8cd1c57f02fb9e06d06074400760c4bdeee3097b0f81a4f"

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
