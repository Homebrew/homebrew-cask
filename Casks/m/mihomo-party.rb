cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.7.5"

  on_catalina :or_older do
    sha256 arm:   "24441175a6af40cf196943a06979e0ebf16f48a63dd3fadd2138a872e6601674",
           intel: "6ba01d0232eea24ad62faad1871308359d7f44fb85b0a9989da56ad57bb48c11"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "acd276f9d344edcf9ce5abe1f1211b8710a1df49bc04c5e1b3d812a475a120ab",
           intel: "d3d43759eff92e30358b58b76b2720c3cdeebea5dd5a27738ea21e6a2cb4f29a"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/"

    pkg "mihomo-party-macos-#{version}-#{arch}.pkg"
  end

  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://mihomo.party/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  uninstall launchctl: "party.mihomo.helper",
            pkgutil:   "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
