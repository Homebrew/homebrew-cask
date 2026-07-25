cask "font-gensenrounded" do
  version "2.100"
  sha256 "01f57ff5eac25143c654cfd37ab06d191703fb67aea94811ec48f101a2f6e203"

  url "https://github.com/ButTaiwan/gensen-font/releases/download/v#{version}/GenSenRounded#{version.major}-ttc.zip"
  name "GenSenRounded"
  name "GenSenRounded"
  homepage "https://github.com/ButTaiwan/gensen-font"

  font "GenSenRounded#{version.major}-B.ttc"
  font "GenSenRounded#{version.major}-EL.ttc"
  font "GenSenRounded#{version.major}-H.ttc"
  font "GenSenRounded#{version.major}-L.ttc"
  font "GenSenRounded#{version.major}-M.ttc"
  font "GenSenRounded#{version.major}-R.ttc"

  # No zap stanza required
end
