cask "huly" do
  arch arm: "arm64", intel: "x64"

  version "0.6.470"
  sha256 arm:   "d8163cbb0a0a3b1e0bc64d376940bbb8eb8ecd262c2dc0711b62b7fe10f51d76",
         intel: "dd9c5471b8f08ef2ba5aab9ccf3e702f1167df8320e388882b39596020a6b6b7"

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
