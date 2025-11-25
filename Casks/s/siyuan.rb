cask "siyuan" do
  arch arm: "-arm64"

  version "3.4.1"
  sha256 arm:   "479ecd9189dc88b5d931b533e246dcf094edbc4d1595f2094dbbf98963af82da",
         intel: "de8b180c5b11637a2b8d149f515866b77abfc885069192130853354dc10e13bd"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  depends_on macos: ">= :big_sur"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
