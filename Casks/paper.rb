cask "paper" do
  version "3.5.1"
  sha256 "a9e6c336d1cfb8d50c2704e91a302c5b3635d6ff865a0199e49b6f6429a8f658"

  url "http://paperimg.meiyuan.in/pap.er_v#{version}.dmg"
  name "Paper"
  homepage "https://paper.meiyuan.in/"

  app "pap.er.app"

  uninstall quit: "com.meiyuan.paper"

  zap trash: [
    "~/Library/Application Scripts/com.meiyuan.LauncherApplication",
    "~/Library/Application Scripts/com.meiyuan.paper",
    "~/Library/Preferences/com.meiyuan.paper.plist",
    "~/Library/Containers/com.meiyuan.LauncherApplication",
    "~/Library/Containers/com.meiyuan.paper",
  ]
end
