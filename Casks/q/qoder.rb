cask "qoder" do
  arch arm: "arm64", intel: "x64"

  version "0.5.5"
  sha256 arm:   "efe826a3896f9f0175b8d9a2dadc46c76427e113a5aa55819bb739581f21c1b8",
         intel: "e621c308e6a6071a71887f6d17eaae4f4de0bdbfa44327a1cd702e2abadede32"

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
