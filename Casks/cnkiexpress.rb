cask "cnkiexpress" do
  version "0.2.31"
  sha256 "6d58da523349fb63f2a01ffef162325396a24984e55a8409b8eb48de9b1c242e"

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
