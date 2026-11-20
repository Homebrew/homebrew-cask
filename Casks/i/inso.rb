cask "inso" do
  version "13.4.0"
  sha256 "d3aa043b7e2b4b2cab26e6c29a593b470433aeac9dda6dc01ac2188d5b947289"

  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/inso-macos-#{version}.zip"
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

  zap :not_required

  caveats do
    requires_rosetta
  end
end
