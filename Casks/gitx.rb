cask "gitx" do
  version "0.7.1"
  sha256 :no_check

  url "https://gitx.frim.nl/Downloads/GitXStable.app.zip"
  name "GitX"
  desc "Git GUI"
  homepage "https://gitx.frim.nl/"

  livecheck do
    url "https://gitx.frim.nl/Downloads/appcast.xml"
    strategy :sparkle
  end

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
