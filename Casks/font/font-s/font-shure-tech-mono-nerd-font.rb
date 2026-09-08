cask "font-shure-tech-mono-nerd-font" do
  version "3.5.1"
  sha256 "002de1c65aa0b1d61e71ff91ec3afc45a88cfeed26433796f00c8d264be66ffa"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/ShareTechMono.tar.xz"
  name "ShureTechMono Nerd Font (Share Tech Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "ShureTechMonoNerdFont-Regular.ttf"
  font "ShureTechMonoNerdFontMono-Regular.ttf"
  font "ShureTechMonoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
