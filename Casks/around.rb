cask "around" do
  version "0.47.10"
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
end
