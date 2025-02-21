cask "huly" do
  arch arm: "arm64", intel: "x64"

  version "0.6.447"
  sha256 arm:   "f118ee4cd2f9b41192fd86b2aed3ebdd0e4828388fb7044200d21e7c13532d78",
         intel: "55be6c826322ab4c3921d41881dec5ca4757b558c214015438a3024cefb44cd1"

  url "https://dist.huly.io/Huly-macos-#{version}-#{arch}.zip"
  name "Huly"
  desc "All-in-One Project Management Platform"
  homepage "https://huly.io/"

  livecheck do
    url "https://dist.huly.io/huly-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Huly.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/hc.hcengineering.huly.sfl*",
    "~/Library/Application Support/Huly Desktop",
    "~/Library/Logs/Huly Desktop",
    "~/Library/Preferences/hc.hcengineering.Huly.plist",
    "~/Library/Saved Application State/hc.hcengineering.Huly.savedState",
  ]
end
