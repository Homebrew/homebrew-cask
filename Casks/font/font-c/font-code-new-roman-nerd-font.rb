cask "font-code-new-roman-nerd-font" do
  version "3.3.0"
  sha256 "ce6c40432dd4f78aef1ebd078c281553b635de5e51332a2ae95557a23c04af49"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/CodeNewRoman.zip"
  name "CodeNewRoman Nerd Font (Code New Roman)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "CodeNewRomanNerdFont-Bold.otf"
  font "CodeNewRomanNerdFont-Italic.otf"
  font "CodeNewRomanNerdFont-Regular.otf"
  font "CodeNewRomanNerdFontMono-Bold.otf"
  font "CodeNewRomanNerdFontMono-Italic.otf"
  font "CodeNewRomanNerdFontMono-Regular.otf"
  font "CodeNewRomanNerdFontPropo-Bold.otf"
  font "CodeNewRomanNerdFontPropo-Italic.otf"
  font "CodeNewRomanNerdFontPropo-Regular.otf"

  # No zap stanza required
end
