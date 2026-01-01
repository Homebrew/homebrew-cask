cask "font-cantarell" do
  version "0.310"
  sha256 "754d7003394b566acb5417505532aa84db942160e4f38bc73de3e2fa2ca58ce0"

  url "https://cantarell.gnome.org/releases/cantarell-fonts-#{version}.tar.xz"
  name "Cantarell"
  homepage "https://cantarell.gnome.org/"

  livecheck do
    url "https://gitlab.gnome.org/GNOME/cantarell-fonts.git"
  end

  font "cantarell-fonts-#{version}/prebuilt/Cantarell-VF.otf"

  # No zap stanza required
end
