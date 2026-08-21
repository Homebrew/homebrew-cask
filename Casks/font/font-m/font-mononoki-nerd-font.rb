cask "font-mononoki-nerd-font" do
  version "3.5.1"
  sha256 "84cf96bf81645f97eb11a410e6febad864784a0a254bba4a348d6ff9665a0114"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Mononoki.tar.xz"
  name "Mononoki Nerd Font (Mononoki)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "MononokiNerdFont-Bold.ttf"
  font "MononokiNerdFont-BoldItalic.ttf"
  font "MononokiNerdFont-Italic.ttf"
  font "MononokiNerdFont-Regular.ttf"
  font "MononokiNerdFontMono-Bold.ttf"
  font "MononokiNerdFontMono-BoldItalic.ttf"
  font "MononokiNerdFontMono-Italic.ttf"
  font "MononokiNerdFontMono-Regular.ttf"
  font "MononokiNerdFontPropo-Bold.ttf"
  font "MononokiNerdFontPropo-BoldItalic.ttf"
  font "MononokiNerdFontPropo-Italic.ttf"
  font "MononokiNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
