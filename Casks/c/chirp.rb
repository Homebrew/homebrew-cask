cask "chirp" do
  version "20250509"
  sha256 "caf9bb6d72a8e2c660e8b73647603eba7278be699edbbe3d24af364db1a33e17"

  url "https://archive.chirpmyradio.com/chirp_next/next-#{version}/chirp-next-#{version}.app.zip",
      verified: "archive.chirpmyradio.com/",
      referer:  "https://archive.chirpmyradio.com/chirp_next/next-#{version}/"
  name "CHIRP"
  desc "Tool for programming amateur radio"
  homepage "https://chirp.danplanet.com/projects/chirp/wiki/Home"

  livecheck do
    url "https://archive.chirpmyradio.com/chirp_next/"
    regex(/next[._-]v?(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :big_sur"

  app "CHIRP.app"

  zap trash: "~/.chirp"
end
