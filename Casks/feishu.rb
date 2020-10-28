cask "feishu" do
  version "3.35.1,6d2fdd"
  sha256 "a98d8dff696c605e38d477b0e25b05ad70c96ac9c93ed7d34e9792b18f32c1c9"

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
