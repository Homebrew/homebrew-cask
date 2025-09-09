cask "siyuan" do
  arch arm: "-arm64"

  version "3.3.2"
  sha256 arm:   "41fb646497e5e433408d5a4fd5d5cb0e96fd628df9dbf4eee6eee6c2dd402257",
         intel: "a49c473770ebf53d3b063a3fc263545dd932d3297c06109787cdff69a7d0cb28"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  depends_on macos: ">= :catalina"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
