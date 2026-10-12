cask "strawberry" do
  version "0.1.69"
  sha256 "e14cf218cd7531bf75ac8aa764c55a13779165faffb023fb803f3d478dbf57d3"

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
