cask "feishu" do
  version "3.43.5"
  sha256 "c7d192ba13a687bf62ed0b042fee18fe9291fc37a13d548c52e318f12a2d3034"

  url "https://sf3-eecdn-tos.pstatp.com/obj/ee-appcenter/f94a8c/feishu-mac-#{version}.dmg",
      verified: "sf3-eecdn-tos.pstatp.com/"
  appcast "https://www.feishu.cn/api/downloads"
  name "feishu"
  desc "Project management software"
  homepage "https://www.feishu.cn/"

  auto_updates true

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Lark.app", target: "Feishu.app"
end
