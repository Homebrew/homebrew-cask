cask "font-genyogothic" do
  version "2.000"
  sha256 "e570102fd1c9abb67897b215e6b7f2a0666610f9bb1e2af5fbb3a2db8f67fa93"

  url "https://github.com/ButTaiwan/genyog-font/releases/download/v#{version}/GenYoGothic#{version.major}-ttc.zip"
  name "GenYoGothic"
  name "源樣黑體"
  homepage "https://github.com/ButTaiwan/genyog-font"

  font "GenYoGothic#{version.major}-B.ttc"
  font "GenYoGothic#{version.major}-EL.ttc"
  font "GenYoGothic#{version.major}-H.ttc"
  font "GenYoGothic#{version.major}-L.ttc"
  font "GenYoGothic#{version.major}-M.ttc"
  font "GenYoGothic#{version.major}-N.ttc"
  font "GenYoGothic#{version.major}-R.ttc"

  # No zap stanza required
end
