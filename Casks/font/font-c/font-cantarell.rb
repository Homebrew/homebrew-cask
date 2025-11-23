cask "font-cantarell" do
  version "0.303"
  sha256 "54f644b5edf5da9a48a942452e38ff1bc2382aa25cabb8742222247944f1dc3a"

  url "https://cantarell.gnome.org/releases/cantarell-fonts-#{version}.tar.xz"
  name "Cantarell"
  homepage "https://cantarell.gnome.org/"

  livecheck do
    url "https://gitlab.gnome.org/GNOME/cantarell-fonts.git"
  end

  font "cantarell-fonts-#{version}/prebuilt/Cantarell-VF.otf"

  # No zap stanza required
end
