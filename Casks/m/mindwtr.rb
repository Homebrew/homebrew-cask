cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.3"
  sha256 arm:   "686f2c1f3d3ab1c4db20d90c366ca6e8432a68e40a530b66b2da5a17935e1b43",
         intel: "8c5cb514c7df9c0c069436261b6396015db6f420283dd4fed9e3c6a38b11bed1"

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
