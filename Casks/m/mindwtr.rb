cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "88ddd47f321f48fb139344a9915b7dde90ce23a171e053bb9decfdd2d5086284",
         intel: "b285377d73b3118c37759866b78ca2d7da7c4b222eb23b0bc92ce73ba5483f88"

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
