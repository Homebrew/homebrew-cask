cask "siyuan" do
  arch arm: "-arm64"

  version "3.3.5"
  sha256 arm:   "44f0e2f7ec60f546c60aa81afe7542e6f331ded0d4a3c3331962574bcc047cca",
         intel: "78b21980e958ce14cf5cb5e3422f940aba856cd520544b3d8e6c25604fc05797"

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
