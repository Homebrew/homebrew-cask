cask "inso" do
  version "9.3.0"
  sha256 "14fc18d3b614524f590902a58f1a773f4657f89c318e6f2079aa2a3e9b456974"

  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/inso-macos-#{version}.zip",
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
