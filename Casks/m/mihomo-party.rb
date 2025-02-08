cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  on_catalina do
    version "1.7.0"
    sha256 arm:   "8126f4b5359bbed3f40522a559ac41611e1b97611b899b91b55884eaee090c19",
           intel: "0ccd588231c01419c27a4941f12bd3d1112aaca0412a02cd70c5ca4146ea0f31"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/releases/download/"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    version "1.7.0"
    sha256 arm:   "840eaabd063daddf0aec1a7e968c7d2606b3bb920e499681f5a87adfc945cf46",
           intel: "01e3c6c5d9ba87b556293f69895468bd692c7a5fc0fdec44bfdc2bc98fee59b9"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/releases/download/"

    pkg "mihomo-party-macos-#{version}-#{arch}.pkg"
  end

  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://mihomo.party/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  uninstall pkgutil: "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
