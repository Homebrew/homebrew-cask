cask "sina-finance" do
  arch arm: "arm64", intel: "x64"

  version "1.2.4"
  sha256 arm:   "2bfc4fb434e12e727ac7d60c211f9210e036f785835f5331b8e441c3de49bfed",
         intel: "919d80ef02335970d48b3ce87b13a856f7885d4a871f49ef2ba6b55678710cc6"

  url "https://file.finance.sina.com.cn/sinafinancedesktop/install/sinafinancedesktop-#{version}-#{arch}.dmg"
  name "Sina Finance"
  name "新浪财经"
  desc "Stock market data and financial news platform"
  homepage "https://finance.sina.com.cn/desktopapp/download/"

  livecheck do
    url :homepage
    regex(/href=.*?sinafinancedesktop[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on :macos

  app "新浪财经APP.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sina.stock.desktop.sfl*",
    "~/Library/Preferences/com.sina.stock.desktop.plist",
    "~/Library/Saved Application State/com.sina.stock.desktop.savedState",
  ]
end
