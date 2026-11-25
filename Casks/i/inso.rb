cask "inso" do
  version "13.5.0"
  sha256 "01c2945eb535293db55240f1ede0ba83e6311863c514857ee5824df759ce3755"

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
