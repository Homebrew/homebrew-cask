cask "chirp" do
  version "20221119"
  sha256 "995240d0c610508084fa1e29df52fec95856b4bb319dbb4215c15645bf24a7ec"

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
