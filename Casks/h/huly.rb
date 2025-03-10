cask "huly" do
  arch arm: "arm64", intel: "x64"

  version "0.6.463"
  sha256 arm:   "0259c525284b5b35079473e7a8817a9ed3fe2eaa3564e3f2717e7fceed8e621f",
         intel: "96dca9d507bd579349d54febf9b1ecf47e60da416eb3c92836eda73b8ea46464"

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
