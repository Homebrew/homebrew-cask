cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.7.3"

  on_catalina :or_older do
    sha256 arm:   "d71a672dacac926bda35c6a58ef6976e0da4d32873545ae4b3437345fa75fe53",
           intel: "8db8d6e15b8dd374589e8bdcac98e3ade45f4911e0098eba48638cc10ff61ac6"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "9926d915b1e2beeb5bee35961956a9a23eb3bf4d4bf79071d61afbdb775032b9",
           intel: "e0565a5033723dc74071f0c4743185ef85918690a2fffac0d6a70b9fddbe7603"

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
