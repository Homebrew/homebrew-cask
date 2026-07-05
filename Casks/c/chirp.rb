cask "chirp" do
  version "20260626"
  sha256 "3a7bc4bfd390895179dec265a42f30dab2813b2e88307d20accdd112cca5dc6d"

  url "https://archive.chirpmyradio.com/chirp_next/next-#{version}/chirp-next-#{version}.app.zip",
      verified: "archive.chirpmyradio.com/",
      referer:  "https://archive.chirpmyradio.com/chirp_next/next-#{version}/"
  name "CHIRP"
  desc "Tool for programming amateur radio"
  homepage "https://chirpmyradio.com/projects/chirp/wiki/Home"

  disable! date: "2025-08-05", because: "cannot be reliably fetched due to Cloudflare protections"

  depends_on :macos

  app "CHIRP.app"

  zap trash: "~/.chirp"
end
