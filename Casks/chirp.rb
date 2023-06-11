cask "chirp" do
  version "20230611"
  sha256 "af2ad2bad5423fe4bacd9bf709881e6e268a901c4c148d9f4175ddfb307e54cb"

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
