cask "feishu" do
  version "3.38.2,cc7c8b"
  sha256 "db927ce31c6396da25daec869e140dffd931bad78cf1892d497c5201004de330"

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
