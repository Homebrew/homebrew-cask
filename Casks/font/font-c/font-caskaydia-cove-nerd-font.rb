cask "font-caskaydia-cove-nerd-font" do
  version "3.2.1"
  sha256 "58ce324c5c8400d14586b968c6fea772b4ae09fe108415384b60dc5e063f3658"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/CascadiaCode.zip"
  name "CaskaydiaCove Nerd Font (Cascadia Code)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "CaskaydiaCoveNerdFont-Bold.ttf"
  font "CaskaydiaCoveNerdFont-BoldItalic.ttf"
  font "CaskaydiaCoveNerdFont-ExtraLight.ttf"
  font "CaskaydiaCoveNerdFont-ExtraLightItalic.ttf"
  font "CaskaydiaCoveNerdFont-Italic.ttf"
  font "CaskaydiaCoveNerdFont-Light.ttf"
  font "CaskaydiaCoveNerdFont-LightItalic.ttf"
  font "CaskaydiaCoveNerdFont-Regular.ttf"
  font "CaskaydiaCoveNerdFont-SemiBold.ttf"
  font "CaskaydiaCoveNerdFont-SemiBoldItalic.ttf"
  font "CaskaydiaCoveNerdFont-SemiLight.ttf"
  font "CaskaydiaCoveNerdFont-SemiLightItalic.ttf"
  font "CaskaydiaCoveNerdFontMono-Bold.ttf"
  font "CaskaydiaCoveNerdFontMono-BoldItalic.ttf"
  font "CaskaydiaCoveNerdFontMono-ExtraLight.ttf"
  font "CaskaydiaCoveNerdFontMono-ExtraLightItalic.ttf"
  font "CaskaydiaCoveNerdFontMono-Italic.ttf"
  font "CaskaydiaCoveNerdFontMono-Light.ttf"
  font "CaskaydiaCoveNerdFontMono-LightItalic.ttf"
  font "CaskaydiaCoveNerdFontMono-Regular.ttf"
  font "CaskaydiaCoveNerdFontMono-SemiBold.ttf"
  font "CaskaydiaCoveNerdFontMono-SemiBoldItalic.ttf"
  font "CaskaydiaCoveNerdFontMono-SemiLight.ttf"
  font "CaskaydiaCoveNerdFontMono-SemiLightItalic.ttf"
  font "CaskaydiaCoveNerdFontPropo-Bold.ttf"
  font "CaskaydiaCoveNerdFontPropo-BoldItalic.ttf"
  font "CaskaydiaCoveNerdFontPropo-ExtraLight.ttf"
  font "CaskaydiaCoveNerdFontPropo-ExtraLightItalic.ttf"
  font "CaskaydiaCoveNerdFontPropo-Italic.ttf"
  font "CaskaydiaCoveNerdFontPropo-Light.ttf"
  font "CaskaydiaCoveNerdFontPropo-LightItalic.ttf"
  font "CaskaydiaCoveNerdFontPropo-Regular.ttf"
  font "CaskaydiaCoveNerdFontPropo-SemiBold.ttf"
  font "CaskaydiaCoveNerdFontPropo-SemiBoldItalic.ttf"
  font "CaskaydiaCoveNerdFontPropo-SemiLight.ttf"
  font "CaskaydiaCoveNerdFontPropo-SemiLightItalic.ttf"

  # No zap stanza required
end
