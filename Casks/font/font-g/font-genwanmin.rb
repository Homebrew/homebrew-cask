cask "font-genwanmin" do
  version "2.000"
  sha256 "15ef26d0184849a450afba405704c09a60591ddbdebee2fa8e2496a96fc351f7"

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
