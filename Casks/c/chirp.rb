cask "chirp" do
  version "20250516"
  sha256 "d3656f41337d4d793a8978c6da013d70b0cbe127c36630056a3f4e5f0523a2ae"

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
