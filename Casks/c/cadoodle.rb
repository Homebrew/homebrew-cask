cask "cadoodle" do
  version "1.7.0"
  on_arm do
    url "https://github.com/CommonWealthRobotics/CaDoodle/releases/download/#{version}/CaDoodle-MacOS-arm64.dmg",
        verified: "github.com/CommonWealthRobotics/CaDoodle/"
    sha256 "ad75ed89a9ecfe79043e7a60fabb40a3b4fce3229d1eabd7f1ad700dd6855eb7"
  end

  on_intel do
    url "https://github.com/CommonWealthRobotics/CaDoodle/releases/download/#{version}/CaDoodle-MacOS-x86_64.dmg",
        verified: "github.com/CommonWealthRobotics/CaDoodle/"
    sha256 "70a896441e1711082813f99eadfe8bdeda455126c525c10c717a72c1b490bebf"
  end
  name "CaDoodle"
  desc "3D CAD tool for robotics and makers"
  homepage "https://cadoodlecad.com"

  depends_on :macos

  app "CaDoodle.app"  
  zap trash: []
end
