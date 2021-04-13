cask "chirp" do
  version "20210406"
  sha256 "4fa18cbce9c7b5c469d73c255179140c132b911ab24e3d97657b17ca6db78934"

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
