cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.6"
  sha256 arm:   "87aa559a881ef4ed0e1d374c7b3edbe49103640139463f8699ed07099590c807",
         intel: "73ecc8bcaf06641cd15ba2d74ab0de0e6f826ff28c1bf64f6b110c43232b60ec"

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
