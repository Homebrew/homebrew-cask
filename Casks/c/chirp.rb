cask "chirp" do
  version "20240213"
  sha256 "633f343d7c6c1ca7d9b3439ec8bc7ec5d4f8f619f2abe5dee2ee5de7f22a849d"

  url "https://trac.chirp.danplanet.com/chirp_next/next-#{version}/chirp-next-#{version}.app.zip"
  name "CHIRP"
  desc "Tool for programming amateur radio"
  homepage "https://chirp.danplanet.com/projects/chirp/wiki/Home"

  livecheck do
    url "https://trac.chirp.danplanet.com/chirp_next/"
    regex(/next[._-]v?(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :big_sur"

  app "CHIRP.app"

  zap trash: "~/.chirp"
end
