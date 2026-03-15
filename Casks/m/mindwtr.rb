cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.3"
  sha256 arm:   "d09636ae4027c22d7e7078c3aa6f666a197fbdb638156cd448b437c5b2e7f069",
         intel: "12c5777835c179e1310ea7c33bd95dbbfa08596ce99224c2b4eb54a78d9a4c0c"

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
