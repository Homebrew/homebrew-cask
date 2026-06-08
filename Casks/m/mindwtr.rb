cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.8"
  sha256 arm:   "5e3e37e1ab5544c7a127888dd12214980689a94333ca3c8d62b2ab640139ada3",
         intel: "d59e8e0ae53ee547abe16eea36f8f883b2b14ec48032b7103c4adf39dc0b34c0"

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
