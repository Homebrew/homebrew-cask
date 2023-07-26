cask "siyuan" do
  arch arm: "-arm64"

  version "2.9.7"
  sha256 arm:   "26906a7136782e09cddfed5365cc10629f0167dae7df456e23cd83616838abca",
         intel: "8e9cc79448467c8cf883ff1088164ba86f7137484859e4d119678c622beffee9"

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
