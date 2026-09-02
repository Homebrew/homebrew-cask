cask "font-fira-code-nerd-font" do
  version "3.5.1"
  sha256 "68e3bd6164864b8b514605bc34e3a87ac401c8c48682fcce6478c70263340207"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/FiraCode.tar.xz"
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
