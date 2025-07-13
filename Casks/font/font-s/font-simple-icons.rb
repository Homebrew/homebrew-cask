cask "font-simple-icons" do
  version "15.6.0"
  sha256 "36a2a2249125e3768e3a1f1bfd0b7c3adfea69be50449e00f0dd28312c42125c"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
