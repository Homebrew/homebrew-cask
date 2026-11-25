cask "spatterlight" do
  version "1.5.6"
  sha256 "4e0ea2f6de0ff95e9574508bc0526172bb5f9bfdbf5838f148750a2852a4b22f"

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
