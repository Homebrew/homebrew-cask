cask "inso" do
  version "10.0.0"
  sha256 "8620df5107129a92aef5f1f6d4886ab49596742b3d663de46431aa4d91524526"

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
    regex(/^core@v?(\d{1,3}(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "inso@beta"

  binary "inso"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
