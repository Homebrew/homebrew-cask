cask "font-envy-code-r-nerd-font" do
  version "3.5.1"
  sha256 "911b420bed40268b4eb3c8fc1aedb1ccf498c3496dff645d72a5995f1e65a9a3"

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
