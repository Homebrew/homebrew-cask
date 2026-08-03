cask "font-lekton-nerd-font" do
  version "3.5.0"
  sha256 "59a333d4e68ae9c1f97c387ae9b7fda4bf48ba2d17c837dd1b143644f3cca365"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Lekton.tar.xz"
  name "Lekton Nerd Font (Lekton)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "LektonNerdFont-Bold.ttf"
  font "LektonNerdFont-Italic.ttf"
  font "LektonNerdFont-Regular.ttf"
  font "LektonNerdFontMono-Bold.ttf"
  font "LektonNerdFontMono-Italic.ttf"
  font "LektonNerdFontMono-Regular.ttf"
  font "LektonNerdFontPropo-Bold.ttf"
  font "LektonNerdFontPropo-Italic.ttf"
  font "LektonNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
