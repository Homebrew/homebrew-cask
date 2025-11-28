cask "kando" do
  arch arm: "arm64", intel: "x64"

  version "2.1.1"
  sha256 arm:   "80ff7a8175f9810f5dfd50803774bcf5723372c7750b803e8c89646e47cc9529",
         intel: "d97b0bd75373f1c86100fe61be998ff40fe8abaabe3e7dcda2aede5e0b4a8ba4"

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
