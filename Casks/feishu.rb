cask "feishu" do
  version "3.36.2,51d33b"
  sha256 "18b61f10a07b73262ba8ab0b4ae926ec26ffddc5d9c79f85733c61048c99f9e6"

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/#{version.after_comma}/Feishu-#{version.before_comma}.dmg"
  appcast "https://www.feishu.cn/api/downloads"
  name "feishu"
  desc "Project management software"
  homepage "https://www.feishu.cn/"

  auto_updates true

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Lark.app", target: "Feishu.app"
end
