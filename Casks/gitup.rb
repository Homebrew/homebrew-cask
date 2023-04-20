cask "gitup" do
  version "1.3.5"
  sha256 "8cf6c5c24959a33fddf886c29edceb144d5ea68c0cc492a9dc28e737d706b4e4"

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
