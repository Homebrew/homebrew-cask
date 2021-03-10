cask "around" do
  version :latest
  sha256 :no_check

  url "https://downloads.around.co/Around-mac-installer.zip"
  name "Around"
  desc "Video calls designed for energy, ideas and action"
  homepage "https://www.around.co/"

  installer manual: "Install Around.app"

  uninstall quit:   "co.teamport.around",
            delete: "/Applications/Around.app"
end
