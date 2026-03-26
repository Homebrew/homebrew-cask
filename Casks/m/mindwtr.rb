cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.7"
  sha256 arm:   "aef56cd707dfb59227e107c98e73863677c6f914e6a2ec9fd8c4f5c61a28fc8f",
         intel: "9ee7256af646123dfc74d3ef7a15a9166f315afb4119db88c694802d4bd30fa9"

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
