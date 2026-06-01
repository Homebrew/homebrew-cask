cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.7"
  sha256 arm:   "4df2fc2a837e4822d7c844c934aeeef541717654e7f4a8356340dbc2d3a20138",
         intel: "bf6de3bf29a26392288c4c8e03f28bcb26196923b4c7cb38910bb392bdf2429a"

  url "https://github.com/dongdongbh/Mindwtr/releases/download/v#{version}/mindwtr_#{version}_#{arch}.dmg"
  name "Mindwtr"
  desc "Local-first GTD productivity tool"
  homepage "https://github.com/dongdongbh/Mindwtr"

  depends_on :macos

  app "Mindwtr.app"

  zap trash: [
    "~/Library/Application Support/mindwtr",
    "~/Library/Application Support/tech.dongdongbh.mindwtr",
    "~/Library/Preferences/tech.dongdongbh.mindwtr.plist",
    "~/Library/Saved Application State/tech.dongdongbh.mindwtr.savedState",
  ]
end
