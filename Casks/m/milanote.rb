cask "milanote" do
  version "3.4.94"
  sha256 "61d1539c37486242f3de70c3e74cff01c025f51f63801da1692d9ea680d4c966"

  url "https://milanote-app-releases.s3.amazonaws.com/Milanote-#{version}.dmg",
      verified: "milanote-app-releases.s3.amazonaws.com/"
  name "Milanote"
  desc "Organise your ideas and projects into visual boards"
  homepage "https://www.milanote.com/"

  livecheck do
    url "https://milanote-app-releases.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Milanote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.milanote.app.sfl*",
    "~/Library/Application Support/Milanote",
    "~/Library/Caches/com.milanote.app",
    "~/Library/Caches/com.milanote.app.ShipIt",
    "~/Library/Library/Logs/Milanote",
    "~/Library/Logs/Milanote",
    "~/Library/Preferences/com.milanote.*.plist",
  ]
end
