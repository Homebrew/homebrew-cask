cask "enfusegui" do
  version "3.1.2"
  sha256 "4a96ab245d8fafaea90d5f3e86df4d7094928ec2d920ae25c9b86b317fc53f8d"

  url "https://swipeware.com/apps/enfusegui/v#{version.major}/EnfuseGUI-#{version}.dmg"
  name "EnfuseGUI"
  desc "HDR image creator"
  homepage "https://swipeware.com/applications/enfusegui/"

  app "EnfuseGUI.app"
end
