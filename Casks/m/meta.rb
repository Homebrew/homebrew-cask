cask "meta" do
  version "2.5.3"
  sha256 "d7073dba9638d033dc7610cb3bec22b9c1895b4cf10e9614679d7da03e2b2da5"

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  name "Meta"
  desc "Tag editor for digital music"
  homepage "https://www.nightbirdsevolve.com/meta/"

  livecheck do
    url "https://www.nightbirdsevolve.com/meta/updates/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "Meta.app"

  uninstall quit: "com.nightbirdsevolve.Meta"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nightbirdsevolve.meta.sfl*",
    "~/Library/Application Support/Meta",
    "~/Library/Caches/com.nightbirdsevolve.Meta",
    "~/Library/HTTPStorages/com.nightbirdsevolve.Meta",
    "~/Library/HTTPStorages/com.nightbirdsevolve.Meta.binarycookies",
    "~/Library/Preferences/com.nightbirdsevolve.Meta.plist",
    "~/Library/Saved Application State/com.nightbirdsevolve.Meta.savedState",
  ]
end
