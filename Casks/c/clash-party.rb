cask "clash-party" do
  arch arm: "arm64", intel: "x64"

  version "1.9.4"

  on_catalina :or_older do
    sha256 arm:   "ca5850d9e91372c15d96697e7abac1b08b8cba80290147d42ba3b88407b06daf",
           intel: "d1dc32ce2c0e2fd63b48d96d041e18d1d4c5ae77906ab241b4ecac9cbf29ff40"

    url "https://github.com/mihomo-party-org/clash-party/releases/download/v#{version}/clash-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/clash-party/"

    pkg "clash-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "f324b17a9549b51ea9542fec6fb7839f06d343628814bb469548201344a268f4",
           intel: "a7ce3f3b8ea587e50a9d46d2d532b6282ad4d63f609efa88ede44b5684e8e7b7"

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
