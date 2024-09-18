cask "font-agave" do
  version "37"
  sha256 "12af3b8cb7d645f7aa60b8680d1eae95f409affef921aac15ff3e05906e9e9d3"

  url "https://github.com/blobject/agave/archive/refs/tags/v#{version}.tar.gz",
      verified: "github.com/blobject/agave/"
  name "Agave"
  homepage "https://b.agaric.net/page/agave"

  font "agave-#{version}/dist/Agave-Bold.ttf"
  font "agave-#{version}/dist/Agave-Regular.ttf"

  # No zap stanza required
end
