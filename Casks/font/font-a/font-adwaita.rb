cask "font-adwaita" do
  version "49.0"
  sha256 "3157c620eb5b72b25ab156d194aa4eb223f9870d547fe83fdbdf06d3e7becb37"

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
