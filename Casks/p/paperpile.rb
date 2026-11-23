cask "paperpile" do
  arch arm: "-arm64"

  version "0.10.2"
  sha256 arm:   "199cf37bfe0ca5590570cfb216713f3b8d482855790210335ce65b23f76ea9bf",
         intel: "ed69e5f63eca98bcdce10d5009a8bed7aab8d082a5480f2d3d0da50137edea93"

  url "https://cdn.paperpile.com/download/desktop/Paperpile-#{version}#{arch}.dmg"
  name "Paperpile"
  desc "Citation plugin for Microsoft Word"
  homepage "https://paperpile.com/word-plugin/"

  livecheck do
    url "https://paperpile-desktop.s3.amazonaws.com/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "Paperpile.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.paperpile.paperpile.sfl*",
    "~/Library/Application Support/Paperpile",
    "~/Library/Caches/Paperpile",
    "~/Library/Group Containers/*.Office/User Content.localized/Startup.localized/Word/paperpile*",
    "~/Library/Preferences/com.paperpile.paperpile.plist",
  ]
end
