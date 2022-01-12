cask "skitch" do
  version "2.9,265157"
  sha256 "8757600d471ed0cac2cc4242c44f1a3c6f1fffe934037845d23392fc5eb81712"

  url "https://cdn1.evernote.com/skitch/mac/release/Skitch-#{version.csv.first}.zip"
  name "Skitch"
  desc "Screen capture tool with mark up and sharing features"
  homepage "https://evernote.com/products/skitch"

  livecheck do
    url "https://evernote.s3.amazonaws.com/skitch/mac/release/skitch-appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Skitch.app"

  zap trash: [
    "~/Library/Preferences/com.plasq.skitch.plist",
    "~/Library/Preferences/com.plasq.skitch.history",
    "~/Library/Application Support/Skitch",
    "~/Library/Application Support/com.skitch.skitch",
    "~/Library/Caches/com.evernote.ENAttachmentToPDFHelper",
    "~/Library/Caches/com.skitch.skitch",
    "~/Library/Preferences/com.evernote.ENAttachmentToPDFHelper.plist",
    "~/Library/Preferences/com.skitch.skitch.plist",
    "~/Library/Saved Application State/com.skitch.skitch.savedState",
  ]
end
