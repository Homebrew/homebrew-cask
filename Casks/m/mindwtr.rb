cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.17"
  sha256 arm:   "22fe9c8c552f5e14c31139fa17828fe7dbef110465c4ed745ea608ebec29c0c8",
         intel: "1475d7c9813032e46fb286edfc1f7046d97a417f55892a5fe391e3155187b48a"

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
