cask "around" do
  version "0.52.11"
  sha256 :no_check

  url "https://downloads.around.co/Around-mac-installer.zip"
  name "Around"
  desc "Video calls designed for energy, ideas and action"
  homepage "https://www.around.co/"

  livecheck do
    url "https://meet.around.co/versions.json"
    regex(/"desktopappMinVersion":"(\d\.\d{2}\.\d{2})"/i)
  end

  installer manual: "Install Around.app"

  uninstall quit:   "co.teamport.around",
            delete: "/Applications/Around.app"

  zap trash: [
    "~/Library/Application Support/Around",
    "~/Library/Caches/co.around.installer",
    "~/Library/Preferences/co.teamport.around.plist",
    "~/Library/Saved Application State/co.around.installer.savedState",
    "~/Library/Saved Application State/co.teamport.around.savedState",
  ]
end
