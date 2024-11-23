cask "font-d2coding-nerd-font" do
  version "3.3.0"
  sha256 "48c4270ffe60e86b236cfa3e7a03facea67f67d0b30440980f0e2be2e6a5c0f4"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/D2Coding.zip"
  name "D2CodingLigature Nerd Font (D2Coding)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "D2CodingLigatureNerdFont-Bold.ttf"
  font "D2CodingLigatureNerdFont-Regular.ttf"
  font "D2CodingLigatureNerdFontMono-Bold.ttf"
  font "D2CodingLigatureNerdFontMono-Regular.ttf"
  font "D2CodingLigatureNerdFontPropo-Bold.ttf"
  font "D2CodingLigatureNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
