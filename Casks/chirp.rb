cask "chirp" do
  version "20221109"
  sha256 "7a2761ac91176e52a29257d612d07765f1728fa3524d7716d6fbdde263c7f8d2"

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
