cask "chirp" do
  version "20210520"
  sha256 "152a25140c8d3dddd725f83f61592d5697ea587ea4061dcda54e9f091c7ec084"

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
