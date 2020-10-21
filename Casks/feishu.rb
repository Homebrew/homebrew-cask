cask "feishu" do
  version "3.34.1,9e7ec7"
  sha256 "c8bf2cba2a3e015abe5ee1499fa7530670db22fab5ccf6e90cd5c578db636dc8"

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
