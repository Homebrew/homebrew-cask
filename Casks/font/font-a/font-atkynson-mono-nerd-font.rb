cask "font-atkynson-mono-nerd-font" do
  version "3.4.0"
  sha256 "3b973f2d44f8dd1705e0865b81ea639830ceef7df0b50f232c123fe7e19e96d0"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/AtkinsonHyperlegibleMono.zip"
  name "AtkynsonMono Nerd Font (Atkinson Hyperlegible Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  no_autobump! because: :bumped_by_upstream

  livecheck do
    url :url
    strategy :github_latest
  end

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
