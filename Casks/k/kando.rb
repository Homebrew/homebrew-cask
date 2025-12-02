cask "kando" do
  arch arm: "arm64", intel: "x64"

  version "2.1.2"
  sha256 arm:   "c34f77882badb15e4ed833734e3932473309ec5a2d8a0d9262629352dfe60410",
         intel: "54cdb6026662466223e85e4b7426cee971a2db2ec10ab295390e70d99a5727b3"

  url "https://github.com/kando-menu/kando/releases/download/v#{version}/Kando-#{version}-#{arch}.dmg",
      verified: "github.com/kando-menu/kando/"
  name "Kando"
  desc "Pie menu"
  homepage "https://kando.menu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Kando.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.kando.sfl*",
    "~/Library/Application Support/Kando",
    "~/Library/Preferences/com.electron.kando.plist",
  ]
end
