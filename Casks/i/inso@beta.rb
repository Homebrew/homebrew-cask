cask "inso@beta" do
  version "13.1.0"
  sha256 "f22c2579e07e4841c73f2f95fe24988f6d87b58e208505d7126efda4bb107d37"

  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/inso-macos-#{version}.zip",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  livecheck do
    url :url
    regex(/^core@v?(\d+(?:\.\d+)+(?:[._-](?:beta|rc)[._-]?\d*)?)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  conflicts_with cask: "inso"
  depends_on :macos

  binary "inso"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
