cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "1129d156b1bb92aa97aee0d595e3f8113293ff7a80ab83ccdec10ccef79cdf89",
         intel: "82b674323951ebbcfcc9c742d06561b82d664548950f3d0b53bba8fe29215bb7"

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
