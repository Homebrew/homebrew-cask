cask "kaku" do
  version "0.2.0"
  sha256 "9dd01fac2df72578ca0ecb243cbf3c7964a6b8c9701c6eabcd57cfef70d4ec72"

  url "https://github.com/tw93/Kaku/releases/download/V#{version}/Kaku.dmg",
      verified: "github.com/tw93/Kaku/"
  name "Kaku"
  desc "A fast, out-of-the-box terminal built for AI coding"
  homepage "https://github.com/tw93/Kaku"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kaku.app"
end
