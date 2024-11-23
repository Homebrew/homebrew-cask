cask "font-droid-sans-mono-nerd-font" do
  version "3.3.0"
  sha256 "60a93ad45d38a1ee901413aa93dabcf9ed9ea8d954d6f9481e1f2d8733c40ea2"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/DroidSansMono.zip"
  name "DroidSansM Nerd Font (Droid Sans Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "DroidSansMNerdFont-Regular.otf"
  font "DroidSansMNerdFontMono-Regular.otf"
  font "DroidSansMNerdFontPropo-Regular.otf"

  # No zap stanza required
end
