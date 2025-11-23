cask "kando" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "3925a07d599c5f194fc4bfb670ef88cd5085609517463db25aeb92d4f0c9cd33",
         intel: "1625dbece2f52f39f849756e6c3a7c1446c83e7dc11a11c4ade48a5d109c8e01"

  url "https://github.com/kando-menu/kando/releases/download/v#{version}/Kando-#{version}-#{arch}.dmg",
      verified: "github.com/kando-menu/kando/"
  name "Kando"
  desc "Pie menu"
  homepage "https://kando.menu/"

  depends_on macos: ">= :big_sur"

  app "Kando.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.kando.sfl*",
    "~/Library/Application Support/Kando",
    "~/Library/Preferences/com.electron.kando.plist",
  ]
end
