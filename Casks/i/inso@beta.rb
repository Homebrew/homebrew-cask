cask "inso@beta" do
  version "13.4.0-beta.0"
  sha256 "9a7e08f1725fa8d144860e4f3db8585c7e2dbb545013087c04a40cee64615f50"

  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/inso-macos-#{version}.zip"
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
