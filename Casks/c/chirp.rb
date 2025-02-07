cask "chirp" do
  version "20250207"
  sha256 "adca853d6ce639c1215fc1753f5bc9de1bf6cd1a32ea88f458f40f526df64a3a"

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
