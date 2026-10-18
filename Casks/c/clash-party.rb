cask "clash-party" do
  arch arm: "arm64", intel: "x64"

  version "2.0.4"

  on_big_sur :or_older do
    sha256 arm:   "d0eaaea4956325f42aa77bbabf7d902d613aaccbef923f5cf9e0287401112963",
           intel: "2b80a2a7311e71e6d70661f3975a4b700eb021dd6ea9a702cbf798965bd8c500"

    url "https://github.com/mihomo-party-org/clash-party/releases/download/v#{version}/clash-party-catalina-#{version}-#{arch}.pkg"

    pkg "clash-party-catalina-#{version}-#{arch}.pkg"
  end
  on_monterey :or_newer do
    sha256 arm:   "174b4b19b02151b2ef84517da0b192e834e43fb4c0ca7fe8700363162cabf7e1",
           intel: "b93a845ecc0eb95da80184e8d3ebb2b94f5d2b9024df7065f9cdf1f23c868432"

    url "https://github.com/mihomo-party-org/clash-party/releases/download/v#{version}/clash-party-macos-#{version}-#{arch}.pkg"

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
