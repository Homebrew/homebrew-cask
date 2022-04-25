cask "cnkiexpress" do
  version "0.1.21"
  sha256 "65aa05aa50c7d1a26c9e653739ac05d2fd3db459d2c90ea2ece1877626862435"

  url "https://download.cnki.net/cnkiexpress/\%E5\%85\%A8\%E7\%90\%83\%E5\%AD\%A6\%E6\%9C\%AF\%E5\%BF\%AB\%E6\%8A\%A5-#{version}.dmg"
  name "CNKIExpress"
  name "全球学术快报"
  desc "Academic application"
  homepage "https://cajviewer.cnki.net/index.html"

  livecheck do
    url "https://cajviewer.cnki.net/download.html"
    regex(%r{href=.*/%E5%85%A8%E7%90%83%E5%AD%A6%E6%9C%AF%E5%BF%AB%E6%8A%A5[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true

  app "全球学术快报.app"

  uninstall quit: "com.cnki.cnkiexpress"

  zap trash: [
    "~/Library/Saved Application State/com.cnki.cnkiexpress.savedState/",
    "~/Library/Application Support/cnkiexpress",
    "~/Library/Preferences/com.cnki.cnkiexpress.plist",
  ]
end
