cask "font-inconsolata-nerd-font" do
  version "3.2.1"
  sha256 "012aa0cac12137786832362022318556a155d2008bbfd198f72944b49cb8a6f8"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Inconsolata.zip"
  name "Inconsolata Nerd Font (Inconsolata)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "InconsolataNerdFont-Bold.ttf"
  font "InconsolataNerdFont-Regular.ttf"
  font "InconsolataNerdFontMono-Bold.ttf"
  font "InconsolataNerdFontMono-Regular.ttf"
  font "InconsolataNerdFontPropo-Bold.ttf"
  font "InconsolataNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
