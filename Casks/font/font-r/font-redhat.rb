cask "font-redhat" do
  version "4.0.3"
  sha256 "95e9eaa3bbbb343d0d4bc519d18a216651c73b0ab191ab5532a3cb370120b2b2"

  url "https://github.com/RedHatOfficial/RedHatFont/archive/refs/tags/#{version}.tar.gz"
  name "Red Hat"
  homepage "https://github.com/RedHatOfficial/RedHatFont/"

  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatDisplay-Black.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatDisplay-BlackItalic.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatDisplay-Bold.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatDisplay-BoldItalic.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatDisplay-Italic.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatDisplay-Light.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatDisplay-LightItalic.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatDisplay-Medium.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatDisplay-MediumItalic.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatDisplay-Regular.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatText-Bold.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatText-BoldItalic.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatText-Italic.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatText-Light.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatText-LightItalic.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatText-Medium.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatText-MediumItalic.otf"
  font "RedHatFont-#{version}/fonts/proportional/static/otf/RedHatText-Regular.otf"
  font "RedHatFont-#{version}/fonts/proportional/RedHatDisplayVF-Italic[wght].ttf"
  font "RedHatFont-#{version}/fonts/proportional/RedHatDisplayVF[wght].ttf"
  font "RedHatFont-#{version}/fonts/proportional/RedHatTextVF-Italic[wght].ttf"
  font "RedHatFont-#{version}/fonts/proportional/RedHatTextVF[wght].ttf"

  # No zap stanza required
end
