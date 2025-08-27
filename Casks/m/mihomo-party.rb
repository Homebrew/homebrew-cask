cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.8.5"

  on_catalina :or_older do
    sha256 arm:   "23a8f72b82ca426d58e035f4b2eda3c1e1ae7413c34f74b5710e50f0ee393c3b",
           intel: "49db8e94c0af1f02f3a7e00fd327ffb8f803ffde29bfc4c4623ebd69cbaf95a6"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "6c593451b9790cf3fd2603c32344f6fac27d2a59017913f0d5de6136588c4f54",
           intel: "4a6fcfc9a419b664b7bccd3de404789962477868185a05fc80e15ac6bbc55e4d"

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
