cask "mihomo-party" do
  version "1.5.13"
  arch arm: "arm64", intel: "x64"

  on_catalina do
    sha256 arm:   "7e5b99b1732b6a4792e1d1ca97c86a97402cb3b092be797da33a5b85eab69c03",
           intel: "a46fc749b23c65f2f295983637ab800b66d79ce3f60da4e5bd1ec7f2aae62052"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end

  on_big_sur :or_newer do
    sha256 arm:   "ee286877ec431e3b2f7960b578438bc4c1ac9bd93361e1c24d47027fbaf67bee",
           intel: "847a3708da60a795e40b604aab9edc83a33eb006940ebbc640d8a4b8791668d5"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg"

    pkg "mihomo-party-macos-#{version}-#{arch}.pkg"
  end

  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  uninstall pkgutil: "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
