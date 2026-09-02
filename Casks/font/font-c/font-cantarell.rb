cask "font-cantarell" do
  version "0.311"
  sha256 "706778e6f9468d534d7afe05e4f6e1586110395ef37d24df259746736fd6b702"

  url "https://cantarell.gnome.org/releases/cantarell-fonts-#{version}.tar.xz"
  name "Cantarell"
  homepage "https://cantarell.gnome.org/"

  livecheck do
    url :homepage
    regex(/href=.*?cantarell-fonts[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  font "cantarell-fonts-#{version}/prebuilt/Cantarell-VF.otf"

  # No zap stanza required
end
