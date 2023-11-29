cask "chirp" do
  version "20231129"
  sha256 "ab361ecb5cb3b12fab2c2fb88d17f9af203da4a1a826edae59896cdcb3d754f7"

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
