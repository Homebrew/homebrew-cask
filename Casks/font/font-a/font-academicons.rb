cask "font-academicons" do
  version "1.9.6"
  sha256 "88a1c603b803ed3ba2ba491bb909c0c2fbaadbcde213e43cb86ce1d0a84db1d4"

  url "https://github.com/jpswalsh/academicons/archive/refs/tags/v#{version}.tar.gz"
  name "Academicons"
  homepage "https://github.com/jpswalsh/academicons"

  font "academicons-#{version}/fonts/academicons.ttf"

  # No zap stanza required
end
