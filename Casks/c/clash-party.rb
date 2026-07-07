cask "clash-party" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"

  on_big_sur :or_older do
    sha256 arm:   "d0eaaea4956325f42aa77bbabf7d902d613aaccbef923f5cf9e0287401112963",
           intel: "2b80a2a7311e71e6d70661f3975a4b700eb021dd6ea9a702cbf798965bd8c500"

    url "https://github.com/mihomo-party-org/clash-party/releases/download/v#{version}/clash-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/clash-party/"

    pkg "clash-party-catalina-#{version}-#{arch}.pkg"
  end
  on_monterey :or_newer do
    sha256 arm:   "a5e2e3fbb8a8b0ac981ab86bc5f4ebf1014ddec64dc0c9ce3a689607150550b4",
           intel: "02a2e28d3e1df1cc8c99222f5c8b8655b9301a24d2c408f38a65e8a43e0eeec0"

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
