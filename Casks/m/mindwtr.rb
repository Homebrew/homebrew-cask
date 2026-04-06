cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "9e2677177b117c1b05e9ba55e1baaf3da065a0d9642c09e22cdf8c503b611131",
         intel: "a6820335b0396a0cbba41c2fb3131e31a722d379122f13d191fd012d23f474cf"

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
