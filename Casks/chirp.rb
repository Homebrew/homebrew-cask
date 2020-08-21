cask "chirp" do
  version "20200807"
  sha256 "117deae1f815e55f27a9ab3c7f64728e90524da8f2271d0ff7b5581201ec6607"

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-unified-daily-#{version}.app.zip"
  appcast "https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM"
  name "CHIRP"
  homepage "https://chirp.danplanet.com/projects/chirp/wiki/Home"

  depends_on cask: "kk7ds-python-runtime"

  app "CHIRP.app"
end
