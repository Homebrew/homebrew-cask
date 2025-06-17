cask "font-departure-mono-nerd-font" do
  version "3.4.0"
  sha256 "e186890efcae31b72e9f2abc860360123ec1b3ae03bc79bb2a9fec388ebade8a"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/DepartureMono.zip"
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
