cask "font-lilex-nerd-font" do
  version "3.2.1"
  sha256 "246c475ddfc9ce70b49470a929443c886e5dcec20ed82c9575ed27c444cf9e23"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Lilex.zip"
  name "Lilex Nerd Font (Lilex)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "LilexNerdFont-Bold.ttf"
  font "LilexNerdFont-ExtraLight.ttf"
  font "LilexNerdFont-ExtraThick.ttf"
  font "LilexNerdFont-Medium.ttf"
  font "LilexNerdFont-Regular.ttf"
  font "LilexNerdFont-Thin.ttf"
  font "LilexNerdFontMono-Bold.ttf"
  font "LilexNerdFontMono-ExtraLight.ttf"
  font "LilexNerdFontMono-ExtraThick.ttf"
  font "LilexNerdFontMono-Medium.ttf"
  font "LilexNerdFontMono-Regular.ttf"
  font "LilexNerdFontMono-Thin.ttf"
  font "LilexNerdFontPropo-Bold.ttf"
  font "LilexNerdFontPropo-ExtraLight.ttf"
  font "LilexNerdFontPropo-ExtraThick.ttf"
  font "LilexNerdFontPropo-Medium.ttf"
  font "LilexNerdFontPropo-Regular.ttf"
  font "LilexNerdFontPropo-Thin.ttf"

  # No zap stanza required
end
