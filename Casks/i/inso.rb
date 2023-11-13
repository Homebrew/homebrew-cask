cask "inso" do
  version "8.4.1"
  sha256 "6a6eb0171037e9ff70f4e6a8115d0ce0c310830f78232be3b57b833c175ede6f"

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

  conflicts_with cask: "homebrew/cask-versions/inso-beta"

  binary "inso"

  # No zap stanza required
end
