cask "font-droid-sans-mono-nerd-font" do
  version "3.5.0"
  sha256 "47f928fa3a3931462546316332ef05c1d9953e24afa86d0841ecf3d18ee06c77"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/DroidSansMono.tar.xz"
  name "DroidSansM Nerd Font (Droid Sans Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "DroidSansMNerdFont-Regular.otf"
  font "DroidSansMNerdFontMono-Regular.otf"
  font "DroidSansMNerdFontPropo-Regular.otf"

  # No zap stanza required
end
