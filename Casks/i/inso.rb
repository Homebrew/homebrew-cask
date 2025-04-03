cask "inso" do
  version "11.0.2"
  sha256 "eb4327f9e9f922a16c3dba1b84a036ca8e8004ada0c0505e3fd6372539c8544f"

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

  binary "inso"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
