cask "sina-finance" do
  arch arm: "arm64", intel: "x64"

  version "1.2.3"
  sha256 arm:   "11a921f6782409fbf0f31943b596b68c7a715494e0b5234dba4b2a4184574854",
         intel: "5538aafd37a4b89538d3f5e1aa9315e32cc0cbb5bef865ca4e779ea0c0815650"

  url "https://file.finance.sina.com.cn/sinafinancedesktop/install/sinafinancedesktop-#{version}-#{arch}.dmg"
  name "Sina Finance"
  name "新浪财经"
  desc "Stock market data and financial news platform"
  homepage "https://finance.sina.com.cn/desktopapp/download/"

  livecheck do
    url :homepage
    regex(/href=.*?sinafinancedesktop[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: :big_sur

  app "新浪财经APP.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sina.stock.desktop.sfl*",
    "~/Library/Preferences/com.sina.stock.desktop.plist",
    "~/Library/Saved Application State/com.sina.stock.desktop.savedState",
  ]
end
