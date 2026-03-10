cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3"
  sha256 arm:   "29693615e066046a24eb942ae7763552f851a10b60f38fcaf04a3871a3a21e97",
         intel: "f01164ec19c492606cb551ceed377b5a2d1a85bb22d8a8615e2b99f1e838ec36"

  url "https://github.com/gitx/gitx/releases/download/#{version}/GitX-#{arch}.dmg"
  name "GitX"
  desc "Git GUI"
  homepage "https://github.com/gitx/gitx"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "GitX.app"
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/nl.frim.gitx.sfl*",
    "~/Library/Caches/nl.frim.GitX",
    "~/Library/Preferences/nl.frim.GitX.plist",
    "~/Library/Saved Application State/nl.frim.GitX.savedState",
  ]
end
