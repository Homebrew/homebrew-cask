cask "chirp" do
  version "20220408"
  sha256 "613c9db5c7867f76e93efd3558af8009b64afc85a27ed07229b4b71c49969c85"

  url "https://trac.chirp.danplanet.com/chirp_daily/daily-#{version}/chirp-unified-daily-#{version}.app.zip"
  name "CHIRP"
  desc "Tool for programming amateur radio"
  homepage "https://chirp.danplanet.com/projects/chirp/wiki/Home"

  livecheck do
    url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM"
    regex(/chirp[._-]unified[._-]daily[._-]v?(\d+(?:\.\d+)*)\.app\.zip/i)
  end

  app "CHIRP.app"

  zap trash: "~/.chirp"
end
