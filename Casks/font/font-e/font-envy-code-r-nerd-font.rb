cask "font-envy-code-r-nerd-font" do
  version "3.5.0"
  sha256 "d077fa8752484fd4240d7504b4ac97f30003e205d894f5528d804c4aa4b764c7"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/EnvyCodeR.tar.xz"
  name "EnvyCodeR Nerd Font (Envy Code R)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "EnvyCodeRNerdFont-Bold.ttf"
  font "EnvyCodeRNerdFont-Italic.ttf"
  font "EnvyCodeRNerdFont-Regular.ttf"
  font "EnvyCodeRNerdFontMono-Bold.ttf"
  font "EnvyCodeRNerdFontMono-Italic.ttf"
  font "EnvyCodeRNerdFontMono-Regular.ttf"
  font "EnvyCodeRNerdFontPropo-Bold.ttf"
  font "EnvyCodeRNerdFontPropo-Italic.ttf"
  font "EnvyCodeRNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
