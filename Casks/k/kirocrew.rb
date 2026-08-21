cask "kirocrew" do
  version "0.3.0-insider.13"
  sha256 "b17bb32ae6f09b20a2cc02b9928bb182da75154e023aed04fb419f86f7aeb368"

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
