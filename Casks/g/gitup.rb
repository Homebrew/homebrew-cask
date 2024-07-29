cask "gitup" do
  version "1.4.1"
  sha256 "6bb185ef1c308a2a74adb09d650e39324dd200948d59495c0e3b464751356cfc"

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
