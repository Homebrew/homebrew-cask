cask "font-genryumin" do
  version "2.000"
  sha256 "69aeb4a00d7a8f459968c79b1549b8bc18f8497f2c0801dfdaecd97374198639"

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
