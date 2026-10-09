cask "inso@beta" do
  version "13.3.1"
  sha256 "869c934c312eeb68c7ec13ed6386e5c1a4cb5cb0c044ed8ef4774a063d296b96"

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
