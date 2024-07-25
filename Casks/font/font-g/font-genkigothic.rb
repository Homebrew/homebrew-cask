cask "font-genkigothic" do
  version "2.000"
  sha256 "e2aab3e38f6a5e0b6b40f0d8fff93c1f48a250f51e913f738d1247edda96974b"

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
