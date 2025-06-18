cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.7.6"

  on_catalina :or_older do
    sha256 arm:   "455ea2e95b10525453f72eff760331693534deb2420f8bccc2a3222bda180c6f",
           intel: "64d22ad27467f7eaf890a40d5d16ac987b1af0fbd4c10c1b17d00f0186acde8f"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "4c90507cd8ed9b8e7987ea4851a76430e3d2b0b67968a9790bc395c78c31917c",
           intel: "9876bc07389c0b2e94cccc1dcc03c86560fbc7a0a34932c28148bb2b4bba6fd9"

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
