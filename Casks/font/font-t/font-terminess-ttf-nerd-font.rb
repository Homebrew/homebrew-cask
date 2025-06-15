cask "font-terminess-ttf-nerd-font" do
  version "3.4.0"
  sha256 "b52a95517b920038396a64ea5ae9e4006541a63831c4a7397d5ce648a8d56d8e"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Terminus.zip"
  name "Terminess Nerd Font (Terminus)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  no_autobump! because: :bumped_by_upstream

  livecheck do
    url :url
    strategy :github_latest
  end

  font "TerminessNerdFont-Bold.ttf"
  font "TerminessNerdFont-BoldItalic.ttf"
  font "TerminessNerdFont-Italic.ttf"
  font "TerminessNerdFont-Regular.ttf"
  font "TerminessNerdFontMono-Bold.ttf"
  font "TerminessNerdFontMono-BoldItalic.ttf"
  font "TerminessNerdFontMono-Italic.ttf"
  font "TerminessNerdFontMono-Regular.ttf"
  font "TerminessNerdFontPropo-Bold.ttf"
  font "TerminessNerdFontPropo-BoldItalic.ttf"
  font "TerminessNerdFontPropo-Italic.ttf"
  font "TerminessNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
