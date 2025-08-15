cask "inso@beta" do
  version "11.5.0-beta.0"
  sha256 "f603663b8a353349b6752b2bc7977fb50a38bd2eefd435fad1709056917d89ae"

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

  binary "inso"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
