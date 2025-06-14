cask "font-adwaita-mono-nerd-font" do
  version "3.4.0"
  sha256 "6f0e3e32dcc408196e0abebf953e3e4f6213813b38201d669a33085811f240e1"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/AdwaitaMono.zip"
  name "AdwaitaMono Nerd Font (Adwaita Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  no_autobump! because: :bumped_by_upstream

  livecheck do
    url :url
    strategy :github_latest
  end

  font "AdwaitaMonoNerdFont-Bold.ttf"
  font "AdwaitaMonoNerdFont-BoldItalic.ttf"
  font "AdwaitaMonoNerdFont-Italic.ttf"
  font "AdwaitaMonoNerdFont-Regular.ttf"
  font "AdwaitaMonoNerdFontMono-Bold.ttf"
  font "AdwaitaMonoNerdFontMono-BoldItalic.ttf"
  font "AdwaitaMonoNerdFontMono-Italic.ttf"
  font "AdwaitaMonoNerdFontMono-Regular.ttf"
  font "AdwaitaMonoNerdFontPropo-Bold.ttf"
  font "AdwaitaMonoNerdFontPropo-BoldItalic.ttf"
  font "AdwaitaMonoNerdFontPropo-Italic.ttf"
  font "AdwaitaMonoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
