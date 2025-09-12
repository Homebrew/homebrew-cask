cask "huly" do
  arch arm: "arm64", intel: "x64"

  version "0.7.242"
  sha256 arm:   "6b8cd6f39bfbcaa3b9d1f06e79c558b9e1436af1a449dbffd861054bcb828903",
         intel: "47c16d2ccf5a050b2b7f4be5bd19f1ac988c292e2151a6a8bb93dddbe735cff4"

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
