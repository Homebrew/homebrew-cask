cask "font-agave-nerd-font" do
  version "3.5.0"
  sha256 "bc0f26d74c6b0c9d70f8b089fec29721979378f8d8e10ca751351ea4e4a72747"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Agave.tar.xz"
  name "Agave Nerd Font (Agave)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "AgaveNerdFont-Bold.ttf"
  font "AgaveNerdFont-Regular.ttf"
  font "AgaveNerdFontMono-Bold.ttf"
  font "AgaveNerdFontMono-Regular.ttf"
  font "AgaveNerdFontPropo-Bold.ttf"
  font "AgaveNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
