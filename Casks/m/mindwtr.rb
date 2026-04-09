cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.1"
  sha256 arm:   "30357e93528734bb2e9078255fb577a62a4d533a2dc3ac73794f24638ce73f18",
         intel: "fc9b3d9bf5bde30862fe71ce6975ff00ce1a107722975922d6bde9b5f284e9aa"

  url "https://github.com/dongdongbh/Mindwtr/releases/download/v#{version}/mindwtr_#{version}_#{arch}.dmg"
  name "Mindwtr"
  desc "Local-first GTD productivity tool"
  homepage "https://github.com/dongdongbh/Mindwtr"

  app "Mindwtr.app"

  zap trash: [
    "~/Library/Application Support/mindwtr",
    "~/Library/Application Support/tech.dongdongbh.mindwtr",
    "~/Library/Preferences/tech.dongdongbh.mindwtr.plist",
    "~/Library/Saved Application State/tech.dongdongbh.mindwtr.savedState",
  ]
end
