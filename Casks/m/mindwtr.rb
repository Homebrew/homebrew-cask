cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.4"
  sha256 arm:   "e73197228722d22994f7af58e5d41edec1bee1ce81e4c2b9985911e2567accea",
         intel: "78b220bcf4fc1e749453bb1298ee9ba4ca7666289049fe9045d205a4c915866b"

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
