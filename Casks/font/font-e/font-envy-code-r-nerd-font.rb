cask "font-envy-code-r-nerd-font" do
  version "3.4.0"
  sha256 "b2b4b013e40a2a8cb13d9eefa56605483788867cd4502d6c4703dceb282cc123"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/EnvyCodeR.zip"
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
