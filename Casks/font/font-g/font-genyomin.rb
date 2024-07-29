cask "font-genyomin" do
  version "2.000"
  sha256 "555d78284473dc73e22e45f9f727ef8cd794b096b41eada80afd508f5d406bfb"

  url "https://github.com/ButTaiwan/genyo-font/releases/download/v#{version}/GenYoMin#{version.major}-ttc.zip"
  name "GenYoMin"
  homepage "https://github.com/ButTaiwan/genyo-font"

  font "GenYoMin#{version.major}-B.ttc"
  font "GenYoMin#{version.major}-EL.ttc"
  font "GenYoMin#{version.major}-H.ttc"
  font "GenYoMin#{version.major}-L.ttc"
  font "GenYoMin#{version.major}-M.ttc"
  font "GenYoMin#{version.major}-R.ttc"
  font "GenYoMin#{version.major}-SB.ttc"

  # No zap stanza required
end
