cask "font-lilex-nerd-font" do
  version "3.4.0"
  sha256 "f0abc93a3ca2923c92e94aa1713dd75925d45f3fc4171478517e5180a98b24e1"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Lilex.zip"
  name "Lilex Nerd Font (Lilex)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "LilexNerdFont-Bold.ttf"
  font "LilexNerdFont-BoldItalic.ttf"
  font "LilexNerdFont-ExtraLight.ttf"
  font "LilexNerdFont-ExtraLightItalic.ttf"
  font "LilexNerdFont-Italic.ttf"
  font "LilexNerdFont-Medium.ttf"
  font "LilexNerdFont-MediumItalic.ttf"
  font "LilexNerdFont-Regular.ttf"
  font "LilexNerdFont-Thin.ttf"
  font "LilexNerdFont-ThinItalic.ttf"
  font "LilexNerdFontMono-Bold.ttf"
  font "LilexNerdFontMono-BoldItalic.ttf"
  font "LilexNerdFontMono-ExtraLight.ttf"
  font "LilexNerdFontMono-ExtraLightItalic.ttf"
  font "LilexNerdFontMono-Italic.ttf"
  font "LilexNerdFontMono-Medium.ttf"
  font "LilexNerdFontMono-MediumItalic.ttf"
  font "LilexNerdFontMono-Regular.ttf"
  font "LilexNerdFontMono-Thin.ttf"
  font "LilexNerdFontMono-ThinItalic.ttf"
  font "LilexNerdFontPropo-Bold.ttf"
  font "LilexNerdFontPropo-BoldItalic.ttf"
  font "LilexNerdFontPropo-ExtraLight.ttf"
  font "LilexNerdFontPropo-ExtraLightItalic.ttf"
  font "LilexNerdFontPropo-Italic.ttf"
  font "LilexNerdFontPropo-Medium.ttf"
  font "LilexNerdFontPropo-MediumItalic.ttf"
  font "LilexNerdFontPropo-Regular.ttf"
  font "LilexNerdFontPropo-Thin.ttf"
  font "LilexNerdFontPropo-ThinItalic.ttf"

  # No zap stanza required
end
