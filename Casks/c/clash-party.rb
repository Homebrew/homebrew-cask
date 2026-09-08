cask "clash-party" do
  arch arm: "arm64", intel: "x64"

  version "2.0.2"

  on_big_sur :or_older do
    sha256 arm:   "d0eaaea4956325f42aa77bbabf7d902d613aaccbef923f5cf9e0287401112963",
           intel: "2b80a2a7311e71e6d70661f3975a4b700eb021dd6ea9a702cbf798965bd8c500"

    url "https://github.com/mihomo-party-org/clash-party/releases/download/v#{version}/clash-party-catalina-#{version}-#{arch}.pkg"

    pkg "clash-party-catalina-#{version}-#{arch}.pkg"
  end
  on_monterey :or_newer do
    sha256 arm:   "438c65bd5cdd8e0fda1fb858bee4b1de4ee7c05f031047a6a597109734edf62b",
           intel: "3e7a54146f0a740828103a9cb4103788813b6b91a8bbf26135485d74fe4e1f42"

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
