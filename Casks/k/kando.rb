cask "kando" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "c3304a17a51523d1517cbc4a6a523fc4e99b4648288f5fe0b57b13abbb00a2b0",
         intel: "4c6b27af16743aa530c443749408328a6158b8d55d6393207680fae1ca8e4cf4"

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
