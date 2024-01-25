cask "fossa" do
  version "3.8.33"
  sha256 "a4bd015f3b60634d02b89ee1f2516ac36833a6a9fdf8e74f3db2458781162beb"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_amd64.zip",
      verified: "github.com/fossas/fossa-cli/"
  name "fossa"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  binary "fossa"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
