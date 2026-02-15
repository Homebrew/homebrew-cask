cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.15"
  sha256 arm:   "5093ef0f55d30cf95e74d0dc5be20e2ab21601cce33360ed3498eaaa6e297a72",
         intel: "0d9f3148226603bed15cedc76ce6c02109bb01e8853cc04fbf026de9000abc07"

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
