cask "chirp" do
  version "20201120"
  sha256 "fd6644892b4504b56a448b626b3d6ef370a5900855b95e62ea975da63976b835"

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-unified-daily-#{version}.app.zip"
  appcast "https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM"
  name "CHIRP"
  homepage "https://chirp.danplanet.com/projects/chirp/wiki/Home"

  depends_on cask: "kk7ds-python-runtime"

  app "CHIRP.app"
end
