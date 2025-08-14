cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.8.4"

  on_catalina :or_older do
    sha256 arm:   "2fe713eda313665cdcbb3cc3cb0770d3a78927bbbe25ab4139f42c1995fca029",
           intel: "41fe40307a8e1a7b1315e8ad9000da7020cb7db16f1efe59cde1b3fd715e471d"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "5536f55a253262d89dba1582826098baaaee8c212e50b56001bb9896bc7571df",
           intel: "354b3b1edb9834f9a2e880bb69fe34a18cbf73a2f9db598e8857a962b0c79a2e"

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
