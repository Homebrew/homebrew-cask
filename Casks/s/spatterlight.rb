cask "spatterlight" do
  version "1.5.5"
  sha256 "ff451c071e167f673526a3570b0e22a9e312c50cce18a1437cd7b50ef8241dca"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight.zip"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "https://ccxvii.net/spatterlight/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Spatterlight.app"

  zap trash: [
    "~/Library/Application Scripts/6U7YY3724Y.group.net.ccxvii.spatterlight",
    "~/Library/Application Scripts/net.ccxvii.spatterlight",
    "~/Library/Application Scripts/net.ccxvii.spatterlight.*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.ccxvii.spatterlight.sfl*",
    "~/Library/Containers/net.ccxvii.spatterlight",
    "~/Library/Containers/net.ccxvii.spatterlight.*",
    "~/Library/Group Containers/6U7YY3724Y.group.net.ccxvii.spatterlight",
    "~/Library/Preferences/net.ccxvii.spatterlight.plist",
  ]
end
