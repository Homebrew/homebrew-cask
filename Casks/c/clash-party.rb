cask "clash-party" do
  arch arm: "arm64", intel: "x64"

  version "1.8.8"

  on_catalina :or_older do
    sha256 arm:   "f188e7d39b0d39a65a9d02e6ae4d5b4d4b11edab20c3cc29995ef0f8ee870edd",
           intel: "5a3ca4d10d84850ab67e195b827cc146eee8c736bfcd46decce6b49d7a7346f3"

    url "https://github.com/mihomo-party-org/clash-party/releases/download/v#{version}/clash-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/clash-party/"

    pkg "clash-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "09544ac95dff9b0fe943119d7dcc6558e82ccfdeda3759ba1ede96d13ace2e0e",
           intel: "fb516694b3f98ae2168d7055dd43e6fc6d9966e2cf8e157506fc1a7e51f03586"

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

  uninstall launchctl: "party.mihomo.helper",
            pkgutil:   "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
