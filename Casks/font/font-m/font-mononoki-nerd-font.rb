cask "font-mononoki-nerd-font" do
  version "3.2.1"
  sha256 "3a6cd53ec11108090d9271331ad6b02f7dce8dff368068bdeb25affaaca8ce4a"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Mononoki.zip"
  name "Mononoki Nerd Font (Mononoki)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

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
