cask "cnkiexpress" do
  version "0.2.30"
  sha256 "e320cddf929df5b4fb059de99185f5517fc9c9cfe5f07ea8eb86b66b60b13cb0"

  url "https://download.cnki.net/cnkiexpress/%E5%85%A8%E7%90%83%E5%AD%A6%E6%9C%AF%E5%BF%AB%E6%8A%A5-#{version}.dmg"
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
