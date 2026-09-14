cask "font-genkigothic" do
  version "2.100"
  sha256 "0104ba39ff119ed691e10b0da28684226928e1862058fa6096ac87e125fe31f0"

  url "https://github.com/ButTaiwan/genyog-font/releases/download/v#{version}/GenKiGothic#{version.major}-ttc.zip"
  name "GenKiGothic"
  name "源起黑體"
  homepage "https://github.com/ButTaiwan/genyog-font"

  font "GenKiGothic#{version.major}-B.ttc"
  font "GenKiGothic#{version.major}-EL.ttc"
  font "GenKiGothic#{version.major}-H.ttc"
  font "GenKiGothic#{version.major}-L.ttc"
  font "GenKiGothic#{version.major}-M.ttc"
  font "GenKiGothic#{version.major}-R.ttc"

  # No zap stanza required
end
