cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1-beta15"
  sha256 arm:   "fd579d69418c0d3436df32638503766717dab4e793e6612ff107d239e863996b",
         intel: "8cc0ad74453f20e945651acfbde4403c9c2b628805747a540e8724f3cf8bf060"

  url "https://github.com/gitx/gitx/releases/download/#{version}/GitX-#{arch}.dmg"
  name "GitX"
  desc "Git GUI"
  homepage "https://github.com/gitx/gitx"

  livecheck do
    url "https://gitx.github.io/gitx/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "rowanj-gitx"

  app "GitX.app"
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/nl.frim.gitx.sfl*",
    "~/Library/Caches/nl.frim.GitX",
    "~/Library/Preferences/nl.frim.GitX.plist",
    "~/Library/Saved Application State/nl.frim.GitX.savedState",
  ]
end
