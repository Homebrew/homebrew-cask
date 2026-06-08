cask "font-gensekigothic" do
  version "2.100"
  sha256 "a1e4a7b1e60b206451336f3c0e224f2936310cdcdb85f54a7642baba7cdd6cdf"

  url "https://github.com/ButTaiwan/genseki-font/releases/download/v#{version}/GenSekiGothic#{version.major}-ttc.zip"
  name "GenSekiGothic"
  homepage "https://github.com/ButTaiwan/genseki-font"

  font "GenSekiGothic#{version.major}-B.ttc"
  font "GenSekiGothic#{version.major}-H.ttc"
  font "GenSekiGothic#{version.major}-L.ttc"
  font "GenSekiGothic#{version.major}-M.ttc"
  font "GenSekiGothic#{version.major}-R.ttc"

  # No zap stanza required
end
