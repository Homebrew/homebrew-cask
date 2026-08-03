cask "font-daddy-time-mono-nerd-font" do
  version "3.5.0"
  sha256 "7e029c49d6dabac0c64d80dae16eb3a0d8af79d709fa4c19ea63e4079403cf10"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/DaddyTimeMono.tar.xz"
  name "DaddyTimeMono Nerd Font (DaddyTimeMono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "DaddyTimeMonoNerdFont-Regular.ttf"
  font "DaddyTimeMonoNerdFontMono-Regular.ttf"
  font "DaddyTimeMonoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
