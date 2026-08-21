cask "font-atkynson-mono-nerd-font" do
  version "3.5.1"
  sha256 "a0fd13eb48ff2c7522f652369d2add4d285903f600525c6bb72be5cf2448ef55"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/AtkinsonHyperlegibleMono.tar.xz"
  name "AtkynsonMono Nerd Font (Atkinson Hyperlegible Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "AtkynsonMonoNerdFont-Bold.otf"
  font "AtkynsonMonoNerdFont-BoldItalic.otf"
  font "AtkynsonMonoNerdFont-Italic.otf"
  font "AtkynsonMonoNerdFont-Light.otf"
  font "AtkynsonMonoNerdFont-LightItalic.otf"
  font "AtkynsonMonoNerdFont-Medium.otf"
  font "AtkynsonMonoNerdFont-MediumItalic.otf"
  font "AtkynsonMonoNerdFont-Regular.otf"
  font "AtkynsonMonoNerdFontMono-Bold.otf"
  font "AtkynsonMonoNerdFontMono-BoldItalic.otf"
  font "AtkynsonMonoNerdFontMono-Italic.otf"
  font "AtkynsonMonoNerdFontMono-Light.otf"
  font "AtkynsonMonoNerdFontMono-LightItalic.otf"
  font "AtkynsonMonoNerdFontMono-Medium.otf"
  font "AtkynsonMonoNerdFontMono-MediumItalic.otf"
  font "AtkynsonMonoNerdFontMono-Regular.otf"
  font "AtkynsonMonoNerdFontPropo-Bold.otf"
  font "AtkynsonMonoNerdFontPropo-BoldItalic.otf"
  font "AtkynsonMonoNerdFontPropo-Italic.otf"
  font "AtkynsonMonoNerdFontPropo-Light.otf"
  font "AtkynsonMonoNerdFontPropo-LightItalic.otf"
  font "AtkynsonMonoNerdFontPropo-Medium.otf"
  font "AtkynsonMonoNerdFontPropo-MediumItalic.otf"
  font "AtkynsonMonoNerdFontPropo-Regular.otf"

  # No zap stanza required
end
