cask "gitup" do
  version "1.3.1"
  sha256 :no_check

  url "https://gitup-builds.s3.amazonaws.com/stable/GitUp.zip",
      verified: "gitup-builds.s3.amazonaws.com/"
  name "GitUp"
  desc "Git interface focused on visual interaction"
  homepage "https://gitup.co/"

  livecheck do
    url "https://github.com/git-up/GitUp/releases"
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
