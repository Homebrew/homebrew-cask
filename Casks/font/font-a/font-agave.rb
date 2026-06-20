cask "font-agave" do
  version "38"
  sha256 "d0f5eaa692d1f29faf9ac06bf116e8c8db88e9a88b274760b7e7cf321c29d5e7"

  url "https://github.com/blobject/agave/archive/refs/tags/#{version}.tar.gz",
      verified: "github.com/blobject/agave/"
  name "Agave"
  homepage "https://b.agaric.net/page/agave"

  font "agave-#{version}/dist/Agave-Bold.ttf"
  font "agave-#{version}/dist/Agave-Regular.ttf"

  # No zap stanza required
end
