cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.8.2"

  on_catalina :or_older do
    sha256 arm:   "ff6951cfc7140e42162153df521bfd35a29f2c31292aea4f1c80bc595722996e",
           intel: "7e9ac60dbafb8edac549ce342353148c529c4cb05022805488f5405eabfc3e55"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "ba0b183bae9f7e5fe2f65bca601e8ec039e91457b83a6c4758d65afdcdaa3c81",
           intel: "b2e6b4206ba922735077fe265ee41acce5fa44c98ca0e233c7288db08cabf432"

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
