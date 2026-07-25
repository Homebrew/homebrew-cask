cask "font-optician-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/anewtypeofinterference/Optician-Sans/raw/master/OpenType-PS/Optician-Sans.otf",
      verified: "github.com/anewtypeofinterference/Optician-Sans/"
  name "Optician Sans"
  homepage "https://optician-sans.com/"

  font "Optician-Sans.otf"

  # No zap stanza required
end
