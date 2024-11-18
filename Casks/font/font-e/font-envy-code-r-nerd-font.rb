cask "font-envy-code-r-nerd-font" do
  version "3.3.0"
  sha256 "1404d84593f2b9fad926443c4c57f8262e60d7c77f63fa38f950b39a51bc16f7"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/EnvyCodeR.zip"
  name "EnvyCodeR Nerd Font (Envy Code R)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

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
