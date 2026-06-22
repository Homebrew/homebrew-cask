cask "cadoodle" do
  version "1.7.0"
  sha256 "358f89cfba4a21555943271d00d963cd84acff6c8b486c255d1468ea38c10fc2"

  url "https://github.com/CommonWealthRobotics/CaDoodle/releases/download/#{version}/CaDoodle-MacOS-arm64.dmg"
  name "CaDoodle"
  desc "3D CAD tool for robotics and makers"
  homepage "https://cadoodlecad.com/"

  app "CaDoodle.app"
end
