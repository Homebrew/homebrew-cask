cask "qview" do
  version "5.0"
  sha256 "37515e6188970b7ecd4d9f85b1e5102e3743fe49907d0533dbf82a8832741a97"

  url "https://github.com/jurplel/qView/releases/download/#{version}/qView-#{version}.dmg"
  name "qView"
  desc "Image viewer"
  homepage "https://github.com/jurplel/qView/"

  app "qView.app"
end
