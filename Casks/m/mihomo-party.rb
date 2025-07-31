cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.7.7"

  on_catalina :or_older do
    sha256 arm:   "e824d381a6c0380f36d088a356335d388c117af33f595c56b928a63a7675f52a",
           intel: "7a2cf18edb6a1ba023b157189f2cbd048a9dd61928ae908f22a5be0e227e1114"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "129444350da2d07cea64bd29fdd412eca2e7673f906d326511f6a56210979fd2",
           intel: "86e19582769e17083c56daf076e95a89d11c2364dc05be39d90e7454ca6723b2"

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
