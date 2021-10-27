cask "chirp" do
  version "20211016"
  sha256 "a4c4ebaa11334e757ca24070b565ed9874c22cc73ac67e6a856559d8eec744ab"

  url "https://trac.chirp.danplanet.com/chirp_daily/daily-#{version}/chirp-unified-daily-#{version}.app.zip"
  name "CHIRP"
  desc "Tool for programming amateur radio"
  homepage "https://chirp.danplanet.com/projects/chirp/wiki/Home"

  livecheck do
    url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM"
    regex(/chirp[._-]unified[._-]daily[._-]v?(\d+(?:\.\d+)*)\.app\.zip/i)
  end

  app "CHIRP.app"
end
