cask "kando" do
  arch arm: "arm64", intel: "x64"

  version "3.0.0"
  sha256 arm:   "4b6542e0e6191b742603f3577c599f137b127520b465289c522b23d1d31f71c0",
         intel: "42d36215b259e7e928cfc24aa1a9793230867f78b93028c2ef375ff234572879"

  url "https://github.com/kando-menu/kando/releases/download/v#{version}/Kando-#{version}-#{arch}.dmg"
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
