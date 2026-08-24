cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.80.0"
  sha256 arm:   "6171de7f79977b72d7bfb2b7855aee3b54d175261ad1d0e5b09456eaf2315060",
         intel: "12fd6613acd38dbe852b4d29068010a033cd1e797962c49a10a052f812552e17"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hotovo.aider-desk.sfl*",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
