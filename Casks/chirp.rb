cask "chirp" do
  version "20210212"
  sha256 "e86f848bb24d91c9a466baafadabcd1156b207d9ec80a30775c4aabd2d989630"

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-unified-daily-#{version}.app.zip"
  appcast "https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM"
  name "CHIRP"
  desc "Tool for programming amateur radio"
  homepage "https://chirp.danplanet.com/projects/chirp/wiki/Home"

  depends_on cask: "kk7ds-python-runtime"

  app "CHIRP.app"
end
