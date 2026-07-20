cask "font-lekton-nerd-font" do
  version "3.4.0"
  sha256 "b76368a4d080b2b4021d241467898bc2fe0afd447159d65c01b74d9c1bc59ec0"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Lekton.zip"
  name "Lekton Nerd Font (Lekton)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "LektonNerdFont-Bold.ttf"
  font "LektonNerdFont-Italic.ttf"
  font "LektonNerdFont-Regular.ttf"
  font "LektonNerdFontMono-Bold.ttf"
  font "LektonNerdFontMono-Italic.ttf"
  font "LektonNerdFontMono-Regular.ttf"
  font "LektonNerdFontPropo-Bold.ttf"
  font "LektonNerdFontPropo-Italic.ttf"
  font "LektonNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
