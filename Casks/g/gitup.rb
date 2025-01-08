cask "gitup" do
  version "1.4.2"
  sha256 "67b2612ef7aac75194b4fb77a27b2a06b031fccac56db71d9e358d362c2e3b25"

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
  depends_on macos: ">= :high_sierra"

  app "GitUp.app"
  binary "#{appdir}/GitUp.app/Contents/SharedSupport/gitup"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.gitup.mac.sfl*",
    "~/Library/Caches/co.gitup.mac",
    "~/Library/HTTPStorages/co.gitup.mac",
    "~/Library/Preferences/co.gitup.mac.plist",
  ]
end
