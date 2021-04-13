cask "chirp" do
  version "20210406"
  sha256 "4fa18cbce9c7b5c469d73c255179140c132b911ab24e3d97657b17ca6db78934"

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-unified-daily-#{version}.app.zip"
  appcast "https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM"
  name "CHIRP"
  desc "Tool for programming amateur radio"
  homepage "https://chirp.danplanet.com/projects/chirp/wiki/Home"

  app "CHIRP.app"
end
