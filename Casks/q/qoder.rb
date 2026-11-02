cask "qoder" do
  arch arm: "arm64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "481fe4b82927e9ab4a22c4bd31a830b4fdd185d3e3ebe4e29e707f2fd8e61e29",
         intel: "0594dce5bc778ddfdc09a17707ec777c003fe23d3547973e6db7e7b4e156ebd2"

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
