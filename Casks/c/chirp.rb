cask "chirp" do
  version "20251003"
  sha256 "dc29c1d59407be4b133bb745f976b1389736b6b276c089aa045951f53db93a6b"

  url "https://archive.chirpmyradio.com/chirp_next/next-#{version}/chirp-next-#{version}.app.zip",
      verified: "archive.chirpmyradio.com/",
      referer:  "https://archive.chirpmyradio.com/chirp_next/next-#{version}/"
  name "CHIRP"
  desc "Tool for programming amateur radio"
  homepage "https://chirp.danplanet.com/projects/chirp/wiki/Home"

  disable! date: "2025-08-05", because: "cannot be reliably fetched due to Cloudflare protections"

  app "CHIRP.app"

  zap trash: "~/.chirp"
end
