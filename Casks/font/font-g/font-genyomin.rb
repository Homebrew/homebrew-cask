cask "font-genyomin" do
  version "2.100"
  sha256 "292b3af4232d070483e2fa6f09b56a328a4d47da04b4e9d354a6d6d15f2c1f73"

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
