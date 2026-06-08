cask "clash-party" do
  arch arm: "arm64", intel: "x64"

  version "1.9.5"

  on_big_sur :or_older do
    sha256 arm:   "d0eaaea4956325f42aa77bbabf7d902d613aaccbef923f5cf9e0287401112963",
           intel: "2b80a2a7311e71e6d70661f3975a4b700eb021dd6ea9a702cbf798965bd8c500"

    url "https://github.com/mihomo-party-org/clash-party/releases/download/v#{version}/clash-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/clash-party/"

    pkg "clash-party-catalina-#{version}-#{arch}.pkg"
  end
  on_monterey :or_newer do
    sha256 arm:   "8ee492664162468e1cd8345b163c1e0e04936a8dff494f6f7c334a409bf7f414",
           intel: "ed367f69c1c471a4cb91fe683968b07f13a08c5a297d8cb8d7eeb0bda51de9e7"

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
  depends_on :macos

  uninstall launchctl: "party.mihomo.helper",
            pkgutil:   "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
