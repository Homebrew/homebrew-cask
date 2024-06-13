cask "font-caskaydia-mono-nerd-font" do
  version "3.2.1"
  sha256 "603c68495918d6fddd800ffb6ab1ae726f5e410affc6b02047b1cdb00453efab"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/CascadiaMono.zip"
  name "CaskaydiaMono Nerd Font (Cascadia Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "CaskaydiaMonoNerdFont-Bold.ttf"
  font "CaskaydiaMonoNerdFont-BoldItalic.ttf"
  font "CaskaydiaMonoNerdFont-ExtraLight.ttf"
  font "CaskaydiaMonoNerdFont-ExtraLightItalic.ttf"
  font "CaskaydiaMonoNerdFont-Italic.ttf"
  font "CaskaydiaMonoNerdFont-Light.ttf"
  font "CaskaydiaMonoNerdFont-LightItalic.ttf"
  font "CaskaydiaMonoNerdFont-Regular.ttf"
  font "CaskaydiaMonoNerdFont-SemiBold.ttf"
  font "CaskaydiaMonoNerdFont-SemiBoldItalic.ttf"
  font "CaskaydiaMonoNerdFont-SemiLight.ttf"
  font "CaskaydiaMonoNerdFont-SemiLightItalic.ttf"
  font "CaskaydiaMonoNerdFontMono-Bold.ttf"
  font "CaskaydiaMonoNerdFontMono-BoldItalic.ttf"
  font "CaskaydiaMonoNerdFontMono-ExtraLight.ttf"
  font "CaskaydiaMonoNerdFontMono-ExtraLightItalic.ttf"
  font "CaskaydiaMonoNerdFontMono-Italic.ttf"
  font "CaskaydiaMonoNerdFontMono-Light.ttf"
  font "CaskaydiaMonoNerdFontMono-LightItalic.ttf"
  font "CaskaydiaMonoNerdFontMono-Regular.ttf"
  font "CaskaydiaMonoNerdFontMono-SemiBold.ttf"
  font "CaskaydiaMonoNerdFontMono-SemiBoldItalic.ttf"
  font "CaskaydiaMonoNerdFontMono-SemiLight.ttf"
  font "CaskaydiaMonoNerdFontMono-SemiLightItalic.ttf"
  font "CaskaydiaMonoNerdFontPropo-Bold.ttf"
  font "CaskaydiaMonoNerdFontPropo-BoldItalic.ttf"
  font "CaskaydiaMonoNerdFontPropo-ExtraLight.ttf"
  font "CaskaydiaMonoNerdFontPropo-ExtraLightItalic.ttf"
  font "CaskaydiaMonoNerdFontPropo-Italic.ttf"
  font "CaskaydiaMonoNerdFontPropo-Light.ttf"
  font "CaskaydiaMonoNerdFontPropo-LightItalic.ttf"
  font "CaskaydiaMonoNerdFontPropo-Regular.ttf"
  font "CaskaydiaMonoNerdFontPropo-SemiBold.ttf"
  font "CaskaydiaMonoNerdFontPropo-SemiBoldItalic.ttf"
  font "CaskaydiaMonoNerdFontPropo-SemiLight.ttf"
  font "CaskaydiaMonoNerdFontPropo-SemiLightItalic.ttf"

  # No zap stanza required
end
