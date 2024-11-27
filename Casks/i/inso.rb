cask "inso" do
  version "10.1.1"
  sha256 "3a633d9f8206826d89c40ef8f0640b3cbc3ae0ddf4b7efffdbfe927a567d98b0"

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
