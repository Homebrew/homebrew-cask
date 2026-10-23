cask "strawberry" do
  version "0.1.76"
  sha256 "a7f371cdf592c4ed49cc10c318eda434c3d8c4419f1695faf7f9879c7dd45a81"

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
