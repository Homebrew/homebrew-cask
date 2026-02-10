cask "kando" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "302f4d35f7c1a04faca15c6d559f7d021b4fc78d2ec7d8e680a61afd8d2b3374",
         intel: "faab7b720b3cac2fc5199c06abdeca158c4b328f031a13cfc33e3b9d52d13566"

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
