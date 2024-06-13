cask "font-shure-tech-mono-nerd-font" do
  version "3.2.1"
  sha256 "f1c72412ee7849f32182d39ab81484790201589bbe2896df920b9fd99ccd59cc"

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
