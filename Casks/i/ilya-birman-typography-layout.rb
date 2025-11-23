cask "ilya-birman-typography-layout" do
  version "3.9"
  sha256 "64b4f7b1421cc4275864c25941646ddf2d3075212a77e9ba1c2d27b726afe123"

  url "https://ilyabirman.ru/typography-layout/download/ilya-birman-typolayout-#{version}-mac.zip"
  name "Ilya Birman Typography Layout"
  desc "Typography keyboard layout"
  homepage "https://ilyabirman.ru/typography-layout/"

  livecheck do
    url :homepage
    regex(/href=.*?ilya[._-]birman[._-]typolayout[._-]v?(\d+(?:\.\d+)+)[._-]mac\.(?:dmg|zip)/i)
  end

  keyboard_layout "Ilya Birman Typography Layout.bundle"

  # No zap stanza required

  caveats do
    reboot
  end
end
