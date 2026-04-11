cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.2"
  sha256 arm:   "7e00d676631222abc9dec593fed896327a9e03a5f7b1f8d8ca7f9ece9f30501c",
         intel: "a05f682cefaabe6ffeea9f0934a532f8a80d79238c31d9c3fc0a8a97ac20c1a6"

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
