cask "fossa" do
  version "3.9.12"
  sha256 "57290e8083c53b09276323eaf6334d1e307cc23968877195bc0f8b334dfd7a9f"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_amd64.zip",
      verified: "github.com/fossas/fossa-cli/"
  name "fossa"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "fossa"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
