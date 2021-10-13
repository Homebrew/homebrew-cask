cask "shadow" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.0.1020"
  sha256 :no_check

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/Shadow.dmg"
      verified: "commondatastorage.googleapis.com/chromium-browser-snapshots/"
  name "Shadow"
  desc "Your gaming PC powered by Cloud technology"
  homepage "https://shadow.tech/"

  app "Shadow.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
