cask "fastmail" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-#{arch}"

  version "1.6.0"
  sha256 arm:   "738257cb04333254b60b61f076186ec08ba7b6b4f7610c77b6d174e2945c1722",
         intel: "01ab078d2aa89dedc377b97b1d2380b30f91b1b6ee8d6f50373e71630c07b9c8"

  url "https://dl.fastmailcdn.com/desktop/production/mac/#{arch}/Fastmail-#{version}#{arch_suffix}-mac.zip"
  name "Fastmail"
  desc "Email client"
  homepage "https://www.fastmail.com/"

  livecheck do
    url "https://dl.fastmailcdn.com/desktop/production/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Fastmail.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.fastmail.mac.fastmail.sfl*",
    "~/Library/Application Support/Fastmail",
    "~/Library/Preferences/com.fastmail.mac.Fastmail.plist",
  ]
end
