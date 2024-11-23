cask "font-bitstream-vera-sans-mono-nerd-font" do
  version "3.3.0"
  sha256 "20f48559f6ee37ab17703263bd469c3cfc40a4284387b3400a15054fdb0ff6f4"

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
