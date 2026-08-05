cask "kirocrew" do
  version "0.1.2"
  sha256 "97197198ef5a569055aaac8fdfccb2f7240f563fdb2272ce48bfe77d50eb0882"

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
