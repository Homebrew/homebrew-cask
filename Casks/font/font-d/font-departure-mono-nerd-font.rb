cask "font-departure-mono-nerd-font" do
  version "3.5.0"
  sha256 "8c2cd61483ea1f63206fa4b63cb8b6e899ba9a9cbcad4fd7d573e4d781fa01ac"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/DepartureMono.tar.xz"
  name "DepartureMono Nerd Font (Departure Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "DepartureMonoNerdFont-Regular.otf"
  font "DepartureMonoNerdFontMono-Regular.otf"
  font "DepartureMonoNerdFontPropo-Regular.otf"

  # No zap stanza required
end
