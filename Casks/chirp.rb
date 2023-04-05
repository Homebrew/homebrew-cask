cask "chirp" do
  version "20230404"
  sha256 "031f7c6e4ad8977d1b63c8a04ea7d14d424088f1c8a83547211fbede4d1200d7"

  url "https://trac.chirp.danplanet.com/chirp_next/next-#{version}/chirp-next-#{version}.app.zip"
  name "CHIRP"
  desc "Tool for programming amateur radio"
  homepage "https://chirp.danplanet.com/projects/chirp/wiki/Home"

  livecheck do
    url "https://trac.chirp.danplanet.com/chirp_next/"
    regex(/next[._-]v?(\d+(?:\.\d+)*)/i)
  end

  app "CHIRP.app"

  zap trash: "~/.chirp"
end
