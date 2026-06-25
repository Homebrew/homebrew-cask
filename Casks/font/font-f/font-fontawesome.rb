cask "font-fontawesome" do
  version "7.3.0"
  sha256 "719c61d1b2b595d166af27dac1fdce1391726b6eed7986076aa13b232976cfcd"

  url "https://github.com/FortAwesome/Font-Awesome/releases/download/#{version}/fontawesome-free-#{version}-desktop.zip",
      verified: "github.com/FortAwesome/Font-Awesome/"
  name "Font Awesome"
  homepage "https://fontawesome.com/"

  font "fontawesome-free-#{version}-desktop/otfs/Font Awesome #{version.major} Brands-Regular-400.otf"
  font "fontawesome-free-#{version}-desktop/otfs/Font Awesome #{version.major} Free-Regular-400.otf"
  font "fontawesome-free-#{version}-desktop/otfs/Font Awesome #{version.major} Free-Solid-900.otf"

  # No zap stanza required
end
