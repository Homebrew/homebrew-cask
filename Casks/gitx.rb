cask "gitx" do
  version "0.7.1"
  sha256 :no_check

  url "http://frim.frim.nl/GitXStable.app.zip"
  name "GitX"
  homepage "http://gitx.frim.nl/"

  livecheck do
    url "http://gitx.frim.nl/Downloads/appcast.xml"
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
