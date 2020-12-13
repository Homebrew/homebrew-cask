cask "feishu" do
  version "3.38.1,1ecff8"
  sha256 "26ddac7568de30d3806a874a96632e690dcae63668ac5a0836ffdbbb577aee9a"

  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/#{version.after_comma}/Feishu-#{version.before_comma}.dmg",
      verified: "sf3-ttcdn-tos.pstatp.com/"
  appcast "https://www.feishu.cn/api/downloads"
  name "feishu"
  desc "Project management software"
  homepage "https://www.feishu.cn/"

  auto_updates true

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Lark.app", target: "Feishu.app"
end
