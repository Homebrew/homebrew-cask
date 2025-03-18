cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.25"
  sha256 arm:   "a79d51d4f1202c5f841f0ccd422f1146ca0cfacf2755e8cda647c67eaae29d72",
         intel: "bdfa44c19bdcfa67868dc9769534e25895a89df6c5315c2bf38f6ec8e34b2743"

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
