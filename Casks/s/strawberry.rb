cask "strawberry" do
  version "0.1.65"
  sha256 "04e92ec6417698a054af385cc4b8b8a1b692feddd97b65a8e47cdc5f2f05387d"

  url "https://strawberrybucket.com/strawberry-#{version}.dmg"
  name "Strawberry"
  desc "AI-powered web browser"
  homepage "https://strawberrybrowser.com/"

  livecheck do
    url "https://strawberrybucket.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Strawberry.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mirror-browser.sfl*",
    "~/Library/Application Support/strawberry",
    "~/Library/Preferences/com.mirror-browser.plist",
  ]
end
