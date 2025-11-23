cask "font-genryumin" do
  version "2.100"
  sha256 "6416430281c5d4f2b9c992cb560da608d18ed2b9007b8f558c8c3b91eeb5e65d"

  url "https://github.com/ButTaiwan/genryu-font/releases/download/v#{version}/GenRyuMin#{version.major}-ttc.zip"
  name "GenRyuMin"
  homepage "https://github.com/ButTaiwan/genryu-font"

  font "GenRyuMin#{version.major}-B.ttc"
  font "GenRyuMin#{version.major}-EL.ttc"
  font "GenRyuMin#{version.major}-H.ttc"
  font "GenRyuMin#{version.major}-L.ttc"
  font "GenRyuMin#{version.major}-M.ttc"
  font "GenRyuMin#{version.major}-R.ttc"
  font "GenRyuMin#{version.major}-SB.ttc"

  # No zap stanza required
end
