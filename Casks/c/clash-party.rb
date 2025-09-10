cask "clash-party" do
  arch arm: "arm64", intel: "x64"

  version "1.8.7"

  on_catalina :or_older do
    sha256 arm:   "f188e7d39b0d39a65a9d02e6ae4d5b4d4b11edab20c3cc29995ef0f8ee870edd",
           intel: "5a3ca4d10d84850ab67e195b827cc146eee8c736bfcd46decce6b49d7a7346f3"

    url "https://github.com/mihomo-party-org/clash-party/releases/download/v#{version}/clash-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/clash-party/"

    pkg "clash-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "992944a6316b88895d7a68ad557ec4867e2670f17f00c3120e1eeb75b2c9e7ed",
           intel: "e9d232731f924fa8bebed2adad69a3df975d5d41f1ecc4e661d2e8d6bbc6ada9"

    url "https://github.com/mihomo-party-org/clash-party/releases/download/v#{version}/clash-party-macos-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/clash-party/"

    pkg "clash-party-macos-#{version}-#{arch}.pkg"
  end

  name "Clash Party"
  desc "Another Mihomo GUI"
  homepage "https://clashparty.org/"

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
