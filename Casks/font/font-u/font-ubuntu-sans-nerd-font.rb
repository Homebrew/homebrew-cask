cask "font-ubuntu-sans-nerd-font" do
  version "3.3.0"
  sha256 "65d74bd6d3b5d4447fb6abe8da009fcc133a888a29b27be46baec98872f5dee9"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/UbuntuSans.zip"
  name "UbuntuSans Nerd Font families (Ubuntu Sans)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "UbuntuSansMonoNerdFont-Bold.ttf"
  font "UbuntuSansMonoNerdFont-BoldItalic.ttf"
  font "UbuntuSansMonoNerdFont-Italic.ttf"
  font "UbuntuSansMonoNerdFont-Medium.ttf"
  font "UbuntuSansMonoNerdFont-MediumItalic.ttf"
  font "UbuntuSansMonoNerdFont-Regular.ttf"
  font "UbuntuSansMonoNerdFont-SemiBold.ttf"
  font "UbuntuSansMonoNerdFont-SemiBoldItalic.ttf"
  font "UbuntuSansMonoNerdFontMono-Bold.ttf"
  font "UbuntuSansMonoNerdFontMono-BoldItalic.ttf"
  font "UbuntuSansMonoNerdFontMono-Italic.ttf"
  font "UbuntuSansMonoNerdFontMono-Medium.ttf"
  font "UbuntuSansMonoNerdFontMono-MediumItalic.ttf"
  font "UbuntuSansMonoNerdFontMono-Regular.ttf"
  font "UbuntuSansMonoNerdFontMono-SemiBold.ttf"
  font "UbuntuSansMonoNerdFontMono-SemiBoldItalic.ttf"
  font "UbuntuSansMonoNerdFontPropo-Bold.ttf"
  font "UbuntuSansMonoNerdFontPropo-BoldItalic.ttf"
  font "UbuntuSansMonoNerdFontPropo-Italic.ttf"
  font "UbuntuSansMonoNerdFontPropo-Medium.ttf"
  font "UbuntuSansMonoNerdFontPropo-MediumItalic.ttf"
  font "UbuntuSansMonoNerdFontPropo-Regular.ttf"
  font "UbuntuSansMonoNerdFontPropo-SemiBold.ttf"
  font "UbuntuSansMonoNerdFontPropo-SemiBoldItalic.ttf"
  font "UbuntuSansNerdFont-Bold.ttf"
  font "UbuntuSansNerdFont-BoldItalic.ttf"
  font "UbuntuSansNerdFont-Italic.ttf"
  font "UbuntuSansNerdFont-Medium.ttf"
  font "UbuntuSansNerdFont-MediumItalic.ttf"
  font "UbuntuSansNerdFont-Regular.ttf"
  font "UbuntuSansNerdFont-SemiBold.ttf"
  font "UbuntuSansNerdFont-SemiBoldItalic.ttf"
  font "UbuntuSansNerdFontPropo-Bold.ttf"
  font "UbuntuSansNerdFontPropo-BoldItalic.ttf"
  font "UbuntuSansNerdFontPropo-Italic.ttf"
  font "UbuntuSansNerdFontPropo-Medium.ttf"
  font "UbuntuSansNerdFontPropo-MediumItalic.ttf"
  font "UbuntuSansNerdFontPropo-Regular.ttf"
  font "UbuntuSansNerdFontPropo-SemiBold.ttf"
  font "UbuntuSansNerdFontPropo-SemiBoldItalic.ttf"

  # No zap stanza required
end
