cask "font-departure-mono-nerd-font" do
  version "3.5.1"
  sha256 "7d2d86db20730e26ee4fc926e3c64429d6f9da6fce91e74c325fe1c5ee74d9ee"

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
