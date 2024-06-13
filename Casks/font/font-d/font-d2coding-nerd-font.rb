cask "font-d2coding-nerd-font" do
  version "3.2.1"
  sha256 "d7c2ec38d316583c8af0319068ac05488f0c053cccea842aae6089f3d64d758f"

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
