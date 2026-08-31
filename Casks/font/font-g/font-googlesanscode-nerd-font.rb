cask "font-googlesanscode-nerd-font" do
  version "3.5.1"
  sha256 "b5a2a79b6ac0f021049c63b67bb42a1dcf81d5bc4e447fc6205c79d969605f42"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/GoogleSansCode.tar.xz"
  name "GoogleSansCode Nerd Font (Google Sans Code)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "GoogleSansCodeNerdFont-Bold.ttf"
  font "GoogleSansCodeNerdFont-BoldItalic.ttf"
  font "GoogleSansCodeNerdFont-ExtraBold.ttf"
  font "GoogleSansCodeNerdFont-ExtraBoldItalic.ttf"
  font "GoogleSansCodeNerdFont-Italic.ttf"
  font "GoogleSansCodeNerdFont-Light.ttf"
  font "GoogleSansCodeNerdFont-LightItalic.ttf"
  font "GoogleSansCodeNerdFont-Medium.ttf"
  font "GoogleSansCodeNerdFont-MediumItalic.ttf"
  font "GoogleSansCodeNerdFont-Regular.ttf"
  font "GoogleSansCodeNerdFont-SemiBold.ttf"
  font "GoogleSansCodeNerdFont-SemiBoldItalic.ttf"
  font "GoogleSansCodeNerdFontMono-Bold.ttf"
  font "GoogleSansCodeNerdFontMono-BoldItalic.ttf"
  font "GoogleSansCodeNerdFontMono-ExtraBold.ttf"
  font "GoogleSansCodeNerdFontMono-ExtraBoldItalic.ttf"
  font "GoogleSansCodeNerdFontMono-Italic.ttf"
  font "GoogleSansCodeNerdFontMono-Light.ttf"
  font "GoogleSansCodeNerdFontMono-LightItalic.ttf"
  font "GoogleSansCodeNerdFontMono-Medium.ttf"
  font "GoogleSansCodeNerdFontMono-MediumItalic.ttf"
  font "GoogleSansCodeNerdFontMono-Regular.ttf"
  font "GoogleSansCodeNerdFontMono-SemiBold.ttf"
  font "GoogleSansCodeNerdFontMono-SemiBoldItalic.ttf"
  font "GoogleSansCodeNerdFontPropo-Bold.ttf"
  font "GoogleSansCodeNerdFontPropo-BoldItalic.ttf"
  font "GoogleSansCodeNerdFontPropo-ExtraBold.ttf"
  font "GoogleSansCodeNerdFontPropo-ExtraBoldItalic.ttf"
  font "GoogleSansCodeNerdFontPropo-Italic.ttf"
  font "GoogleSansCodeNerdFontPropo-Light.ttf"
  font "GoogleSansCodeNerdFontPropo-LightItalic.ttf"
  font "GoogleSansCodeNerdFontPropo-Medium.ttf"
  font "GoogleSansCodeNerdFontPropo-MediumItalic.ttf"
  font "GoogleSansCodeNerdFontPropo-Regular.ttf"
  font "GoogleSansCodeNerdFontPropo-SemiBold.ttf"
  font "GoogleSansCodeNerdFontPropo-SemiBoldItalic.ttf"

  # No zap stanza required
end
