cask "ilya-birman-typography-layout" do
  version "3.8"
  sha256 "9c6fd58ef2f527a400e850358c38f4c36a5f264e66d03a464f1d70102c5ce9df"

  url "https://ilyabirman.ru/typography-layout/download/ilya-birman-typolayout-#{version}-mac.dmg"
  name "Ilya Birman Typography Layout"
  desc "Typography keyboard layout"
  homepage "https://ilyabirman.ru/typography-layout/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/ilya[._-]birman[._-]typolayout[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg}i)
  end

  keyboard_layout \
    "Install Ilya Birman Typography Layout.app/Contents/Resources/Layout/Ilya Birman Typography Layout.bundle"

  caveats do
    reboot
  end
end
