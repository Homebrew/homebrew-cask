cask "gitup" do
  version "1.1.3"
  sha256 "c9e885a010d30ac9a2fae05475f4be68b722585ba64fb486ae8bde08c1cb7620"

  # gitup-builds.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://gitup-builds.s3.amazonaws.com/stable/GitUp.zip"
  appcast "https://github.com/git-up/GitUp/releases.atom"
  name "GitUp"
  desc "Git interface focused on visual interaction"
  homepage "https://gitup.co/"

  auto_updates true

  app "GitUp.app"
  binary "#{appdir}/GitUp.app/Contents/SharedSupport/gitup"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.gitup.mac.sfl*",
    "~/Library/Caches/co.gitup.mac",
    "~/Library/Preferences/co.gitup.mac.plist",
  ]
end
