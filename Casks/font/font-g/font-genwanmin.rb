cask "font-genwanmin" do
  version "2.100"
  sha256 "b2e987aa451057776fbf914b05a3646433c3b81f5dad01b622fa1c0b84dfdddd"

  url "https://github.com/ButTaiwan/genwan-font/releases/download/v#{version}/GenWanMin#{version.major}-ttc.zip"
  name "GenWanMin"
  homepage "https://github.com/ButTaiwan/genwan-font"

  font "GenWanMin#{version.major}-EL.ttc"
  font "GenWanMin#{version.major}-L.ttc"
  font "GenWanMin#{version.major}-M.ttc"
  font "GenWanMin#{version.major}-R.ttc"
  font "GenWanMin#{version.major}-SB.ttc"

  # No zap stanza required
end
