cask "siyuan" do
  arch arm: "-arm64"

  version "2.9.9"
  sha256 arm:   "a5a5ebbadf59a015e38b11df05191f68da89203cc12fe27225d6eb337abfef56",
         intel: "d35f07163609c3475a0cd4a684217ac8053de459e80c19680ae4f862a636cf1d"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
