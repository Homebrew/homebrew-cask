cask "cadoodle" do
  version "1.3.2"
  sha256 "5da6d65dc7082b28e0ea49ace767f3e6237726bac43998983bc3c61cbdcb33f0"

  url "https://github.com/CommonWealthRobotics/CaDoodle/releases/download/#{version}/CaDoodle-MacOS-arm64.dmg",
      verified: "github.com/CommonWealthRobotics/CaDoodle/"
  name "CaDoodle"
  desc "CAD program for beginners"
  homepage "https://cadoodlecad.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CaDoodle.app"
  # No zap stanza required
end
