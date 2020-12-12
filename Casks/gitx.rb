cask "gitx" do
  version "0.7.1"
  sha256 :no_check

  url "http://frim.frim.nl/GitXStable.app.zip"
  appcast "http://gitx.frim.nl/Downloads/appcast.xml"
  name "GitX"
  homepage "http://gitx.frim.nl/"

  conflicts_with cask: ["laullon-gitx", "rowanj-gitx"]

  app "GitX.app"
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/nl.frim.gitx.sfl*",
    "~/Library/Caches/nl.frim.GitX",
    "~/Library/Preferences/nl.frim.GitX.plist",
    "~/Library/Saved Application State/nl.frim.GitX.savedState",
  ]
end
