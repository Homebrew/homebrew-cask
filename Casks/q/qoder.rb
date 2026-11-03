cask "qoder" do
  arch arm: "arm64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "baf7943ce1d157e167f0268cf34bc635105ad68a71dc160be42ce5d8b65832d9",
         intel: "57aa300be8c0e0caba7ba7c2071e83a5bb23243322f4416e746eabf38ad9bd7b"

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
