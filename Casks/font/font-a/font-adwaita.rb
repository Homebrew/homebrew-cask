cask "font-adwaita" do
  version "51.0"
  sha256 "fa104ae2c1b96580d322f563ffe8b2dfca5296b0eca4971efd2d8011405123d2"

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
