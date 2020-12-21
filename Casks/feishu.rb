cask "feishu" do
  version "3.39.2,1536bc"
  sha256 "4ade0db19ccabe6a0e797c29193ecf6d2efa51d475311176f9fce792798c451f"

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
