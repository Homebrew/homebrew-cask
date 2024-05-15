cask "inso" do
  version "9.2.0"
  sha256 "780ef8a25cdf2b3a143a7ec9d2776285f934c4bf1ba2e0ab740a671cca5d4e56"

  url "https://github.com/Kong/insomnia/releases/download/lib%40#{version}/inso-macos-#{version}.zip",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  # Upstream previously used a date-based version scheme (e.g., `2023.5.8`)
  # before switching to a typical `8.1.0` format. The date-based versions are
  # numerically higher, so we have to avoid matching them.
  livecheck do
    url :url
    regex(/^lib@v?(\d{1,3}(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "inso@beta"

  binary "inso"

  # No zap stanza required
end
