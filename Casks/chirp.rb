cask "chirp" do
  version "20221021"
  sha256 "c8bbcce5332a427b487f226ecba238c26db91ecb4d08022854a22a3abdbc21f1"

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
