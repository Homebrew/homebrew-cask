cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.5"
  sha256 arm:   "e71cbccd02ce407cda8b4e193a4fc1877b260e54a2dad75d239d05adb9f52b00",
         intel: "070c7ae70fc6d0f4f50e368848efa5e09af06768030206988e31b54bb0ebce54"

  url "https://github.com/dongdongbh/Mindwtr/releases/download/v#{version}/mindwtr_#{version}_#{arch}.dmg"
  name "Mindwtr"
  desc "Local-first GTD productivity tool"
  homepage "https://github.com/dongdongbh/Mindwtr"

  depends_on :macos

  app "Mindwtr.app"

  zap trash: [
    "~/Library/Application Support/mindwtr",
    "~/Library/Application Support/tech.dongdongbh.mindwtr",
    "~/Library/Caches/tech.dongdongbh.mindwtr",
    "~/Library/Preferences/tech.dongdongbh.mindwtr.plist",
    "~/Library/Saved Application State/tech.dongdongbh.mindwtr.savedState",
    "~/Library/WebKit/tech.dongdongbh.mindwtr",
  ]
end
