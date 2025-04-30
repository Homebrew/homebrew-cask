cask "huly" do
  arch arm: "arm64", intel: "x64"

  version "0.6.493"
  sha256 arm:   "ffa15721e84988537ac2569fd9a348470ec4749c26a9eec1f50743981190332a",
         intel: "2741c66f683d7698588a3e2362a0394b12bf2668c452c6c9a501a411f8e7b60a"

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
