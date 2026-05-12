cask "singlebox" do
  version "64.9.0"
  sha256 "5f7672aed1e55af405f4e731a1adc2e154980aa4cf35685afe41594fbdc17652"

  url "https://cdn-2.webcatalog.io/singlebox2/Singlebox-#{version}-universal.dmg",
      verified: "cdn-2.webcatalog.io/singlebox2/"
  name "Singlebox"
  desc "Multi-account web browser"
  homepage "https://singlebox.app/en/"

  livecheck do
    url "https://cdn-2.webcatalog.io/singlebox2/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Singlebox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.webcatalog.singlebox2.sfl*",
    "~/Library/Application Support/Singlebox",
    "~/Library/Application Support/Singlebox2",
    "~/Library/Preferences/com.webcatalog.singlebox2.plist",
    "~/Library/Saved Application State/com.webcatalog.singlebox2.savedState",
  ]
end
