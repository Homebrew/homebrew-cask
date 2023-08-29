cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.2"
  sha256 arm:   "cae0da6ba623e88af2b014294606bd4b255b5f059e916903b85e587f7e6de757",
         intel: "daef9c27654a654310f66eef95aaa32cb05a41f4de14d31aeeca6782ad844399"

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
