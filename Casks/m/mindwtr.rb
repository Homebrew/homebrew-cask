cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.18"
  sha256 arm:   "9387e4a2e5f311ad3422e3e6a6918c5658799e76559e541a77e7455985db1c66",
         intel: "1145bb4b50c84cb85675340b0dd549aeef5b4f9cb3701940c1c9b02f6cc29924"

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
