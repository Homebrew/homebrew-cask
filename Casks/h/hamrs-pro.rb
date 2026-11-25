cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.53.0"
  sha256 arm:   "122be163c81acc7157b2f6b6238f6dfed37be9f9be5a8308d7f1fb5285a5f9c8",
         intel: "7a470589be161dec6a81481817881df5ee5395a3e2fc2dac89e75e76f4efaaa7"

  url "https://hamrs-dist.s3.amazonaws.com/hamrs-pro-#{version}-mac-#{arch}.dmg"
  name "HAMRS Pro"
  desc "Portable logger"
  homepage "https://hamrs.app/"

  livecheck do
    url "https://hamrs-dist.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "HAMRS Pro.app"

  uninstall quit: "app.hamrs.pro"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.hamrs.pro.sfl*",
    "~/Library/Application Support/hamrs-pro",
    "~/Library/Logs/hamrs-pro",
    "~/Library/Preferences/app.hamrs.pro.plist",
  ]
end
