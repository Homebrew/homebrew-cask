cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  on_catalina do
    version "1.6.0"
    sha256 arm:   "e80d37a6479b63113e0f6de09a86990ef924f2e5a2d499e1eb95b09369271266",
           intel: "a46fc749b23c65f2f295983637ab800b66d79ce3f60da4e5bd1ec7f2aae62052"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/releases/download/"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    version "1.6.0"
    sha256 arm:   "fc97e86b73fdc2ae6a6827618d565dc4a9c97606139050bc6d263999cc49e28f",
           intel: "3dc5653bc8a34249b986e6c74b6dab732b7c930bcf325749a68f565ef7ca7b78"

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
