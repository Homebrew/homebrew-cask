cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.6"
  sha256 arm:   "31529ea99d50dddcfbba964ad6de2cad111db0c2a2ccf22f0f74909c54e899a9",
         intel: "224120d06a8052aeae81af10b16a71999a6cd1de93b47d708732a33852174d15"

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
