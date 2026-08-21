cask "font-lekton-nerd-font" do
  version "3.5.1"
  sha256 "f69eb88d4f002ca3ea053551ae91edb522671b460662874c43ece6a7b8aabbe3"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Lekton.tar.xz"
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
