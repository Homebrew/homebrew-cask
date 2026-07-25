cask "font-undefined-medium" do
  version "1.3"
  sha256 "a5e6682e165e70e10b575a468c00013038ec60bad4f1daa9cfb8415d3ce4d84d"

  url "https://github.com/andirueckel/undefined-medium/archive/refs/tags/v#{version}.tar.gz"
  name "undefined medium"
  homepage "https://github.com/andirueckel/undefined-medium"

  font "undefined-medium-#{version}/fonts/otf/undefined-medium.otf"

  # No zap stanza required
end
