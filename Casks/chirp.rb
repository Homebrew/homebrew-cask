cask "chirp" do
  version "20210416"
  sha256 "4c312ad558d3de47bfc6dfd837a90715e059841d40257f90010e0bdd328a48b2"

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-unified-daily-#{version}.app.zip"
  name "CHIRP"
  desc "Tool for programming amateur radio"
  homepage "https://chirp.danplanet.com/projects/chirp/wiki/Home"

  livecheck do
    url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM"
    strategy :page_match
    regex(/chirp-unified-daily-(\d+(?:\.\d+)*).app\.zip/i)
  end

  app "CHIRP.app"
end
