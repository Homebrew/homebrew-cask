cask "huly" do
  arch arm: "arm64", intel: "x64"

  version "0.7.313"
  sha256 arm:   "0ada8646d5ae7962c5b89f40f959d224904a79a0495614b9be7381f82dd6c049",
         intel: "f1823ab69438e80c3b617f8a767f47f6ae81d8e8c0672f5b3e3f74cc66e1ac8f"

  url "https://dist.huly.io/Huly-macos-#{version}-#{arch}.zip"
  name "Huly"
  desc "All-in-One Project Management Platform"
  homepage "https://huly.io/"

  livecheck do
    url "https://dist.huly.io/huly-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Huly.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/hc.hcengineering.huly.sfl*",
    "~/Library/Application Support/Huly Desktop",
    "~/Library/Logs/Huly Desktop",
    "~/Library/Preferences/hc.hcengineering.Huly.plist",
    "~/Library/Saved Application State/hc.hcengineering.Huly.savedState",
  ]
end
