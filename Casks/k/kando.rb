cask "kando" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "bb3db6563ceca0c250bef4ede05e072df6c67dbc01affba3eb219833889360cc",
         intel: "b9b23d28a3a1cc5f996dcdf646508bd48c2209321c9b89c22b7a1055442becee"

  url "https://github.com/kando-menu/kando/releases/download/v#{version}/Kando-#{version}-#{arch}.dmg",
      verified: "github.com/kando-menu/kando/"
  name "Kando"
  desc "Pie menu"
  homepage "https://kando.menu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Kando.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.kando.sfl*",
    "~/Library/Application Support/Kando",
    "~/Library/Preferences/com.electron.kando.plist",
  ]
end
