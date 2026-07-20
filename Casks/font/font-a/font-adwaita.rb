cask "font-adwaita" do
  version "50.0"
  sha256 "4c927fbfeec1c503801ba510c2c94e0054c82c522cf7ba0d3be5d4d41fcf5c86"

  url "https://download.gnome.org/sources/adwaita-fonts/#{version.major}/adwaita-fonts-#{version}.tar.xz"
  name "Adwaita"
  homepage "https://gitlab.gnome.org/GNOME/adwaita-fonts"

  font "adwaita-fonts-#{version}/mono/AdwaitaMono-Bold.ttf"
  font "adwaita-fonts-#{version}/mono/AdwaitaMono-BoldItalic.ttf"
  font "adwaita-fonts-#{version}/mono/AdwaitaMono-Italic.ttf"
  font "adwaita-fonts-#{version}/mono/AdwaitaMono-Regular.ttf"
  font "adwaita-fonts-#{version}/sans/AdwaitaSans-Italic.ttf"
  font "adwaita-fonts-#{version}/sans/AdwaitaSans-Regular.ttf"

  # No zap stanza required
end
