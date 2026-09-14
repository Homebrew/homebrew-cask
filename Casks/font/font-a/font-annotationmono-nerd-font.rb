cask "font-annotationmono-nerd-font" do
  version "3.5.1"
  sha256 "bae334fde071ee7450cc8bbdc20fc5663a81466dce54d66f93815a48f59a308c"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/AnnotationMono.tar.xz"
  name "AnnotationM Nerd Font (Annotation Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "AnnotationMNerdFont-Bold.ttf"
  font "AnnotationMNerdFont-BoldItalic.ttf"
  font "AnnotationMNerdFont-BoldItalicUpright.ttf"
  font "AnnotationMNerdFont-BoldOblique.ttf"
  font "AnnotationMNerdFont-ExtraBold.ttf"
  font "AnnotationMNerdFont-ExtraBoldItalic.ttf"
  font "AnnotationMNerdFont-ExtraBoldItalicUpright.ttf"
  font "AnnotationMNerdFont-ExtraBoldOblique.ttf"
  font "AnnotationMNerdFont-Italic.ttf"
  font "AnnotationMNerdFont-ItalicUpright.ttf"
  font "AnnotationMNerdFont-Medium.ttf"
  font "AnnotationMNerdFont-MediumItalic.ttf"
  font "AnnotationMNerdFont-MediumItalicUpright.ttf"
  font "AnnotationMNerdFont-MediumOblique.ttf"
  font "AnnotationMNerdFont-Regular.ttf"
  font "AnnotationMNerdFont-RegularOblique.ttf"
  font "AnnotationMNerdFontMono-Bold.ttf"
  font "AnnotationMNerdFontMono-BoldItalic.ttf"
  font "AnnotationMNerdFontMono-BoldItalicUpright.ttf"
  font "AnnotationMNerdFontMono-BoldOblique.ttf"
  font "AnnotationMNerdFontMono-ExtraBold.ttf"
  font "AnnotationMNerdFontMono-ExtraBoldItalic.ttf"
  font "AnnotationMNerdFontMono-ExtraBoldItalicUpright.ttf"
  font "AnnotationMNerdFontMono-ExtraBoldOblique.ttf"
  font "AnnotationMNerdFontMono-Italic.ttf"
  font "AnnotationMNerdFontMono-ItalicUpright.ttf"
  font "AnnotationMNerdFontMono-Medium.ttf"
  font "AnnotationMNerdFontMono-MediumItalic.ttf"
  font "AnnotationMNerdFontMono-MediumItalicUpright.ttf"
  font "AnnotationMNerdFontMono-MediumOblique.ttf"
  font "AnnotationMNerdFontMono-Regular.ttf"
  font "AnnotationMNerdFontMono-RegularOblique.ttf"
  font "AnnotationMNerdFontPropo-Bold.ttf"
  font "AnnotationMNerdFontPropo-BoldItalic.ttf"
  font "AnnotationMNerdFontPropo-BoldItalicUpright.ttf"
  font "AnnotationMNerdFontPropo-BoldOblique.ttf"
  font "AnnotationMNerdFontPropo-ExtraBold.ttf"
  font "AnnotationMNerdFontPropo-ExtraBoldItalic.ttf"
  font "AnnotationMNerdFontPropo-ExtraBoldItalicUpright.ttf"
  font "AnnotationMNerdFontPropo-ExtraBoldOblique.ttf"
  font "AnnotationMNerdFontPropo-Italic.ttf"
  font "AnnotationMNerdFontPropo-ItalicUpright.ttf"
  font "AnnotationMNerdFontPropo-Medium.ttf"
  font "AnnotationMNerdFontPropo-MediumItalic.ttf"
  font "AnnotationMNerdFontPropo-MediumItalicUpright.ttf"
  font "AnnotationMNerdFontPropo-MediumOblique.ttf"
  font "AnnotationMNerdFontPropo-Regular.ttf"
  font "AnnotationMNerdFontPropo-RegularOblique.ttf"

  # No zap stanza required
end
