cask "chirp" do
  version "20200909"
  sha256 "7a229d0d5927fd417c14ece81a959eb900c126e4c88e0ed140bef313f7d4e3c6"

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-unified-daily-#{version}.app.zip"
  appcast "https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM"
  name "CHIRP"
  homepage "https://chirp.danplanet.com/projects/chirp/wiki/Home"

  depends_on cask: "kk7ds-python-runtime"

  app "CHIRP.app"
end
