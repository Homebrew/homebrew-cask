cask "kirocrew" do
  version "0.3.0"
  sha256 "075bc8a9aef8fceb896fac291bef0bd5cf6ef3f7698166d0475fa198795dd993"

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
