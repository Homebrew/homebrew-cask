cask "strawberry" do
  version "0.1.70"
  sha256 "8b0331bafd549ef21f29ea2b4c88d7c7dfe9a43b9b58d7d0bb6af0be118c716d"

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
