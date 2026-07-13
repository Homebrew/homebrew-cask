cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "e23613dbc31e7c036e327cd55120c2a828405599175eb81d49fcd2f489320ec8",
         intel: "5ae369f374abb8288c5a84c2581fd268f70798c21f72e7239c8c9ac9b61e78a9"

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
