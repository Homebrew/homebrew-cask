cask "font-adwaita" do
  version "48.2"
  sha256 "156f7e92f2f82e527fc73c309dbb237c0a4a5c3a95bc5ee94a5efb6947c553e0"

  url "https://download.gnome.org/sources/adwaita-fonts/#{version.major}/adwaita-fonts-#{version}.tar.xz"
  name "Adwaita"
  homepage "https://gitlab.gnome.org/GNOME/adwaita-fonts"

  no_autobump! because: :requires_manual_review

  font "adwaita-fonts-#{version}/mono/AdwaitaMono-Bold.ttf"
  font "adwaita-fonts-#{version}/mono/AdwaitaMono-BoldItalic.ttf"
  font "adwaita-fonts-#{version}/mono/AdwaitaMono-Italic.ttf"
  font "adwaita-fonts-#{version}/mono/AdwaitaMono-Regular.ttf"
  font "adwaita-fonts-#{version}/sans/AdwaitaSans-Italic.ttf"
  font "adwaita-fonts-#{version}/sans/AdwaitaSans-Regular.ttf"

  # No zap stanza required
end
