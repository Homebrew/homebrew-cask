cask "font-fontawesome" do
  version "6.6.0"
  sha256 "8cde9bf442f218ee330844263ee35403ff466a1afbbd11ab170523f3cd09067c"

  url "https://github.com/FortAwesome/Font-Awesome/releases/download/#{version}/fontawesome-free-#{version}-desktop.zip",
      verified: "github.com/FortAwesome/Font-Awesome/"
  name "Font Awesome"
  homepage "https://fontawesome.com/"

  font "fontawesome-free-#{version}-desktop/otfs/Font Awesome #{version.major} Brands-Regular-400.otf"
  font "fontawesome-free-#{version}-desktop/otfs/Font Awesome #{version.major} Free-Regular-400.otf"
  font "fontawesome-free-#{version}-desktop/otfs/Font Awesome #{version.major} Free-Solid-900.otf"

  # No zap stanza required
end
