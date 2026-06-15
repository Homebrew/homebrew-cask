cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "170c8a0f5477c04aed10bd6552ae603bedc9b4ade7dffc35586341126973713f",
         intel: "12e72c18651481f478944554beaa0fbf6895e0185c0c553ecf0d838b2551c9b1"

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
