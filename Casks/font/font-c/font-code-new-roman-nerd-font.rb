cask "font-code-new-roman-nerd-font" do
  version "3.5.1"
  sha256 "eb902759ff5bc6c4011821c566f4001139c7c571abeb8990f3a3cdfdf661da4e"

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
