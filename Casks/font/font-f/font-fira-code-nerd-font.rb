cask "font-fira-code-nerd-font" do
  version "3.4.0"
  sha256 "7cc4ffd8f7a1fc914cdab7b149808298165ff7a7f40e40d82dea9ebe41e8ca0b"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/FiraCode.zip"
  name "FiraCode Nerd Font (Fira Code)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "FiraCodeNerdFont-Bold.ttf"
  font "FiraCodeNerdFont-Light.ttf"
  font "FiraCodeNerdFont-Medium.ttf"
  font "FiraCodeNerdFont-Regular.ttf"
  font "FiraCodeNerdFont-Retina.ttf"
  font "FiraCodeNerdFont-SemiBold.ttf"
  font "FiraCodeNerdFontMono-Bold.ttf"
  font "FiraCodeNerdFontMono-Light.ttf"
  font "FiraCodeNerdFontMono-Medium.ttf"
  font "FiraCodeNerdFontMono-Regular.ttf"
  font "FiraCodeNerdFontMono-Retina.ttf"
  font "FiraCodeNerdFontMono-SemiBold.ttf"
  font "FiraCodeNerdFontPropo-Bold.ttf"
  font "FiraCodeNerdFontPropo-Light.ttf"
  font "FiraCodeNerdFontPropo-Medium.ttf"
  font "FiraCodeNerdFontPropo-Regular.ttf"
  font "FiraCodeNerdFontPropo-Retina.ttf"
  font "FiraCodeNerdFontPropo-SemiBold.ttf"

  # No zap stanza required
end
