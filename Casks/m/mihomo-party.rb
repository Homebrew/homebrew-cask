cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.7.2"

  on_catalina :or_older do
    sha256 arm:   "778d4b84330be9c9c386a0ff4fc00a6677adf5fb8e1fa47e3f88850a34d490cd",
           intel: "206153e1b7fbad51059084cd3f114681724df9c08bd384439bf44a9a6aa3b1d1"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/releases/download/"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "9cfadb3e29265c6a84b47dda1aba0327d7413aa1bf4d7b7e2861f7536c69f155",
           intel: "634cfbee97c2fe10c95ba2f2e246f22ad4f0df19f180e98b05edde05cb066747"

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

  uninstall launchctl: "party.mihomo.helper",
            pkgutil:   "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
