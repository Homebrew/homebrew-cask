cask "font-code-new-roman-nerd-font" do
  version "3.5.0"
  sha256 "e91d9b8c6218892dff79ed93befdc2d0fcac8d33fbc20d22f933b9401332ccb4"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/CodeNewRoman.tar.xz"
  name "CodeNewRoman Nerd Font (Code New Roman)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

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
