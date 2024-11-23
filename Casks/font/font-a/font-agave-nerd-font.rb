cask "font-agave-nerd-font" do
  version "3.3.0"
  sha256 "42ec90ea46d0ffdae4051d42638f0bffaf4a75b4ab82a55b4484db48cd7dd85b"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Agave.zip"
  name "Agave Nerd Font (Agave)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "AgaveNerdFont-Bold.ttf"
  font "AgaveNerdFont-Regular.ttf"
  font "AgaveNerdFontMono-Bold.ttf"
  font "AgaveNerdFontMono-Regular.ttf"
  font "AgaveNerdFontPropo-Bold.ttf"
  font "AgaveNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
