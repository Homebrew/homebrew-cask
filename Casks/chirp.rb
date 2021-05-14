cask "chirp" do
  version "20210429"
  sha256 "325f3d071b2c98a832cdc2e4563e88cb94315b20acd61ccb0d9c81e370f86086"

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
