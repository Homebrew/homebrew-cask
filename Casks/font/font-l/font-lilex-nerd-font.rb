cask "font-lilex-nerd-font" do
  version "3.5.1"
  sha256 "34ba9564bcb32c03d2d8e1404e72c5c4320fa99231ba99f4c566a24224f350a3"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Lilex.tar.xz"
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
