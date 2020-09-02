cask "chirp" do
  version "20200902"
  sha256 "82b3339c963257000b2b4b0661fbcb1b69ea6c6b539da1c8468ab83fa35a9ff8"

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-unified-daily-#{version}.app.zip"
  appcast "https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM"
  name "CHIRP"
  homepage "https://chirp.danplanet.com/projects/chirp/wiki/Home"

  depends_on cask: "kk7ds-python-runtime"

  app "CHIRP.app"
end
