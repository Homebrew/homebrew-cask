cask "clash-party" do
  arch arm: "arm64", intel: "x64"

  version "1.9.1"

  on_catalina :or_older do
    sha256 arm:   "f188e7d39b0d39a65a9d02e6ae4d5b4d4b11edab20c3cc29995ef0f8ee870edd",
           intel: "5a3ca4d10d84850ab67e195b827cc146eee8c736bfcd46decce6b49d7a7346f3"

    url "https://github.com/mihomo-party-org/clash-party/releases/download/v#{version}/clash-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/clash-party/"

    pkg "clash-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "d9fa6567649430aba6ee837c1896690ea776d749566bcd1a449cae71d57da18c",
           intel: "c1d875b12442fc56a75f15d2fe088bdf2ca78fd70ee5842115fdf02f136a03af"

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
