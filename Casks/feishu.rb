cask "feishu" do
  version "3.31.1,7842ae"
  sha256 "43347844e10e8af392bdcba927acbbd691f963fe14dff42448563585381656b3"

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/#{version.after_comma}/Feishu-#{version.before_comma}.dmg"
  appcast "https://www.feishu.cn/api/downloads"
  name "feishu"
  homepage "https://www.feishu.cn/"

  auto_updates true

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Lark.app", target: "Feishu.app"
end
