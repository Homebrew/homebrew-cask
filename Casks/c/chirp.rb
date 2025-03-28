cask "chirp" do
  version "20250328"
  sha256 "ae0f80cdd0f343c0940315040a341462102bc493df88e2d7361c1ef1258f8a47"

  url "https://archive.chirpmyradio.com/chirp_next/next-#{version}/chirp-next-#{version}.app.zip",
      verified: "archive.chirpmyradio.com/"
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
