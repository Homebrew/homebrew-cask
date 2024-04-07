cask "gitup" do
  version "1.4.0"
  sha256 "35688803564d20bf987e9e6ae7915525a260975ab25bcf99a967423d83a53b2e"

  url "https://github.com/git-up/GitUp/releases/download/v#{version}/GitUp.zip",
      verified: "github.com/git-up/GitUp/"
  name "GitUp"
  desc "Git interface focused on visual interaction"
  homepage "https://gitup.co/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "GitUp.app"
  binary "#{appdir}/GitUp.app/Contents/SharedSupport/gitup"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.gitup.mac.sfl*",
    "~/Library/Caches/co.gitup.mac",
    "~/Library/HTTPStorages/co.gitup.mac",
    "~/Library/Preferences/co.gitup.mac.plist",
  ]
end
