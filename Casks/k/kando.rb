cask "kando" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "0934aa51275cbe0508f6f4abb1e779d1357967c20c3ad3fca4105c66ff950a18",
         intel: "83de85aaf258c09c770957850c03284fffa7c9531ad9e388ced889aa7de51479"

  url "https://github.com/kando-menu/kando/releases/download/v#{version}/Kando-#{version}-#{arch}.dmg",
      verified: "github.com/kando-menu/kando/"
  name "Kando"
  desc "Pie menu"
  homepage "https://kando.menu/"

  depends_on macos: ">= :catalina"

  app "Kando.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.kando.sfl*",
    "~/Library/Application Support/Kando",
    "~/Library/Preferences/com.electron.kando.plist",
  ]
end
