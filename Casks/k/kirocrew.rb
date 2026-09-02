cask "kirocrew" do
  version "0.4.1-insider.1"
  sha256 "b02d8ea8a4641453b6be6f56a7445a02b55ce1a15a54733bf922d013b14b7ddb"

  url "https://download.crew.kiro.dev/desktop/stable/#{version}/KiroCrew.dmg"
  name "Kiro Crew"
  desc "Persistent AI development workspace with multi-agent support"
  homepage "https://kiro.dev/docs/crew/"

  livecheck do
    url "https://updates.crew.kiro.dev/feed/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "KiroCrew.app"

  zap trash: [
    "~/.kirocrew.breadcrumb",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amazon.kiro.crew.sfl*",
    "~/Library/Application Support/kirocrew-electron-mac",
    "~/Library/Preferences/com.amazon.kiro.crew.plist",
  ]
end
