cask "kando" do
  arch arm: "arm64", intel: "x64"

  version "2.3.1"
  sha256 arm:   "69a8e7699366a490146646dd221dfa30c13b7e30308390f3987120c7ce8bc766",
         intel: "39401a49a32377b4f73a082efe31a831bc9a927d2c6d1b7ad364494daf5c4c58"

  url "https://github.com/kando-menu/kando/releases/download/v#{version}/Kando-#{version}-#{arch}.dmg",
      verified: "github.com/kando-menu/kando/"
  name "Kando"
  desc "Pie menu"
  homepage "https://kando.menu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Kando.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.kando.sfl*",
    "~/Library/Application Support/Kando",
    "~/Library/Preferences/com.electron.kando.plist",
  ]
end
