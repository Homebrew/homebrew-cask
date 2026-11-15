cask "qoder" do
  arch arm: "arm64", intel: "x64"

  version "0.5.12"
  sha256 arm:   "91b0b9b5b4e40f9ddd78b6be18eab46f673c431d07353d33da5798439b4a279f",
         intel: "e912bad5b3c98744f8f1d3e7153b57e963eb579af4f02303ecd4994aadfd13fb"

  url "https://download.qoder.com/qoder-app/releases/#{version}/Qoder-mac-#{arch}.zip"
  name "Qoder"
  desc "Agentic coding platform"
  homepage "https://qoder.com/"

  livecheck do
    url "https://download.qoder.com/qoder-app/releases/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Qoder.app"

  uninstall quit: "com.qoder.app"

  zap trash: [
    "~/.qoder",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qoder.app.sfl*",
    "~/Library/Application Support/com.qoder.app.stable",
    "~/Library/Preferences/com.qoder.app.plist",
  ]
end
