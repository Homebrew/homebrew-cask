cask "font-devicons" do
  version "2.0.1"
  sha256 "0b68b1350516e2222827b74d826a635c9e6cb288d3baec12d11f85af3a5fb906"

  url "https://registry.npmjs.org/devicons/-/devicons-#{version}.tgz",
      verified: "registry.npmjs.org/devicons/"
  name "Devicons"
  homepage "https://devicons.io/"

  font "package/dist/devicons.ttf"

  # No zap stanza required
end
