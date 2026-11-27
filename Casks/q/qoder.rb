cask "qoder" do
  arch arm: "arm64", intel: "x64"

  version "0.5.21"
  sha256 arm:   "72abf9fb84b450a5d186f719bf56d3bb042ede2179e53e0bceb23f6ea482c008",
         intel: "f3d0a8aa69640703331a057d79f00d1b2d8dddeacc127319a27b2265aa78d850"

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
