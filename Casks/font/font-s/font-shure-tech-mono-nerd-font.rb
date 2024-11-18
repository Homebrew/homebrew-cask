cask "font-shure-tech-mono-nerd-font" do
  version "3.3.0"
  sha256 "128fa7c0a7dcb711591862279beb5ab113ee84dd3b078da75d93bc8a1edacb26"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/ShareTechMono.zip"
  name "ShureTechMono Nerd Font (Share Tech Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "ShureTechMonoNerdFont-Regular.ttf"
  font "ShureTechMonoNerdFontMono-Regular.ttf"
  font "ShureTechMonoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
