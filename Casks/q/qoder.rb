cask "qoder" do
  arch arm: "arm64", intel: "x64"

  version "0.4.11"
  sha256 arm:   "fabeed5344df1dfd3fb5aa864accdff92d1b4d5e705ca2ea1a9420677c1fff46",
         intel: "2c3e68bfa078d618fffc00a55a0fdc1c581d7c8810ec7d0200bb848c89fff074"

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
