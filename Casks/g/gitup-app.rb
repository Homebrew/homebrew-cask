cask "gitup-app" do
  version "1.5.0"
  sha256 "5e1d915ed533334e1691f9c01eb3cb9d2e5f459fb7aa2631b71120ff59ad585b"

  url "https://github.com/git-up/GitUp/releases/download/v#{version}/GitUp.zip",
      verified: "github.com/git-up/GitUp/"
  name "GitUp"
  desc "Git interface focused on visual interaction"
  homepage "https://gitup.co/"

  livecheck do
    url "https://raw.githubusercontent.com/git-up/GitUp/master/appcasts/stable/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "GitUp.app"
  binary "#{appdir}/GitUp.app/Contents/SharedSupport/gitup"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.gitup.mac.sfl*",
    "~/Library/Caches/co.gitup.mac",
    "~/Library/HTTPStorages/co.gitup.mac",
    "~/Library/Preferences/co.gitup.mac.plist",
  ]
end
