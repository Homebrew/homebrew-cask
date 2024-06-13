cask "font-bitstream-vera-sans-mono-nerd-font" do
  version "3.2.1"
  sha256 "6a5d20c72f068a65ebf6e1cf1e168ced5d8c78d703d90b6041a5232db8111205"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/BitstreamVeraSansMono.zip"
  name "BitstromWera Nerd Font (Bitstream Vera Sans Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "BitstromWeraNerdFont-Bold.ttf"
  font "BitstromWeraNerdFont-BoldOblique.ttf"
  font "BitstromWeraNerdFont-Oblique.ttf"
  font "BitstromWeraNerdFont-Regular.ttf"
  font "BitstromWeraNerdFontMono-Bold.ttf"
  font "BitstromWeraNerdFontMono-BoldOblique.ttf"
  font "BitstromWeraNerdFontMono-Oblique.ttf"
  font "BitstromWeraNerdFontMono-Regular.ttf"
  font "BitstromWeraNerdFontPropo-Bold.ttf"
  font "BitstromWeraNerdFontPropo-BoldOblique.ttf"
  font "BitstromWeraNerdFontPropo-Oblique.ttf"
  font "BitstromWeraNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
