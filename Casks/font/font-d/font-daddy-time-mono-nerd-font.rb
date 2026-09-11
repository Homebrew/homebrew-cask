cask "font-daddy-time-mono-nerd-font" do
  version "3.5.1"
  sha256 "d5c67428e6aefe687e3400e5086ff5ad5c5b0c166388a67ba0e94a57a9cc154e"

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
