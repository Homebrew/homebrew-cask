cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1-beta16"
  sha256 arm:   "a4b42f4b2fbab4dfcb28501fa11b439804b5ebfdaec06a723e136b26c3f2c673",
         intel: "5a7d6d73710d8b760ac6121b706c928251fa0777548f6347bfdfc0b221abeaf1"

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
