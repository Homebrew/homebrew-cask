cask "skitch" do
  version "2.9"
  sha256 "8757600d471ed0cac2cc4242c44f1a3c6f1fffe934037845d23392fc5eb81712"

  url "https://cdn1.evernote.com/skitch/mac/release/Skitch-#{version}.zip"
  name "Skitch"
  desc "Screen capture tool with mark up and sharing features"
  homepage "https://evernote.com/products/skitch"

  disable! date: "2024-06-25", because: :no_longer_available

  auto_updates true

  app "Skitch.app"

  zap trash: [
    "~/Library/Application Support/com.skitch.skitch",
    "~/Library/Application Support/Skitch",
    "~/Library/Caches/com.evernote.ENAttachmentToPDFHelper",
    "~/Library/Caches/com.skitch.skitch",
    "~/Library/Preferences/com.evernote.ENAttachmentToPDFHelper.plist",
    "~/Library/Preferences/com.plasq.skitch.history",
    "~/Library/Preferences/com.plasq.skitch.plist",
    "~/Library/Preferences/com.skitch.skitch.plist",
    "~/Library/Saved Application State/com.skitch.skitch.savedState",
  ]
end
