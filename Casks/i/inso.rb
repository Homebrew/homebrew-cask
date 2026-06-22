cask "inso" do
  version "13.0.1"
  sha256 "b83886b2c41e443df5f9b5732b6fee1050b809043ac133a2a9a98d595871c844"

  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/inso-macos-#{version}.zip",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  livecheck do
    url :url
    regex(/^core@v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  conflicts_with cask: "inso@beta"
  depends_on :macos

  binary "inso"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
