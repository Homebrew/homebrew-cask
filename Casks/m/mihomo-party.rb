cask "mihomo-party" do
  version "1.5.13"
  arch arm: "arm64", intel: "x64"

  on_catalina do
    sha256 arm:   "ab3e280993b873d8f3fad9c562541a9d0dd6ffc6fadcdc44e476dd47779a6074",
           intel: "d0618c6b7b2736de481a3d44827894d54e710bc2a64c968b291467828337badc"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "ee286877ec431e3b2f7960b578438bc4c1ac9bd93361e1c24d47027fbaf67bee",
           intel: "16bd0ff41f189057a1366edf425b61151c17bdc37fa031bff65a879154ada490"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg"

    pkg "mihomo-party-macos-#{version}-#{arch}.pkg"
  end

  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  uninstall pkgutil: "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
