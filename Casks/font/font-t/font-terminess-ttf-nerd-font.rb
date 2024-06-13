cask "font-terminess-ttf-nerd-font" do
  version "3.2.1"
  sha256 "b850527aa4699ace0efef45012a12f128a26a7a74e1b55d69ccbb5ff4877ced3"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Terminus.zip"
  name "Terminess Nerd Font (Terminus)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

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
