cask "milanote" do
  version "3.18.148"
  sha256 "2bc2f7797139ee0ea53bd2e8bb2371f8ded72d91ec17a82e4323c382995cb8ba"

  url "https://milanote-app-releases.s3.amazonaws.com/Milanote-#{version}.dmg"
  name "Milanote"
  desc "Organise your ideas and projects into visual boards"
  homepage "https://www.milanote.com/"

  livecheck do
    url "https://milanote-app-releases.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Milanote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.milanote.app.sfl*",
    "~/Library/Application Support/Milanote",
    "~/Library/Caches/com.milanote.app",
    "~/Library/Caches/com.milanote.app.ShipIt",
    "~/Library/Logs/Milanote",
    "~/Library/Preferences/com.milanote.*.plist",
  ]
end
