cask "font-departure-mono-nerd-font" do
  version "3.3.0"
  sha256 "4721f307cd4a6f3632cfec4aafe68f7459002e4650bb4e5c5906a1d087636aff"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/DepartureMono.zip"
  name "DepartureMono Nerd Font (Departure Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "DepartureMonoNerdFont-Regular.otf"
  font "DepartureMonoNerdFontMono-Regular.otf"
  font "DepartureMonoNerdFontPropo-Regular.otf"

  # No zap stanza required
end
